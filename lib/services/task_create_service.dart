import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/models/goal.dart';
import 'package:the_task/models/task.dart';
import 'package:the_task/services/generative_service.dart';
import 'package:the_task/services/goal_service.dart';
import 'package:the_task/services/locale_service.dart';
import 'package:the_task/services/task_feedback_type_service.dart';
import 'package:the_task/services/task_service.dart';
import 'package:the_task/services/task_state_service.dart';

class TaskCreateService {
  final _taskStateService = locator<TaskStateService>();

  Future<Task> createAsync() async {
    final goal = await _selectGoalAsync();
    final task = await _generateTaskAsync(goal);
    task.goal.target = goal;
    return task;
  }

  Future<Goal> _selectGoalAsync() async {
    final goals = locator<GoalService>().goals;
    final random = Random();
    return goals[random.nextInt(goals.length)];
  }

  Future<Task> _generateTaskAsync(Goal goal) async {
    final userPrompt = await _createPrompt(goal);
    final response = await locator<GenerativeService>()
        .generateAsync(_systemPrompt, userPrompt);
    final json = jsonDecode(response);
    return Task.fromJson(json);
  }

  static const String _systemPrompt =
      '''You are an expert task assistant for an app called "The Task". Your goal is to help people achieve their life goals, one small task at a time, to get closer to their life goals over time. Make each task as small and easy as possible to complete, ensuring it can be done within a day. The motto is that small steps lead to great progress over time, so it is important to just keep completing the small tasks. The user can only have a single task active at a time and must complete or abandon it before receiving a new one. A user can skip suggestions before selecting one to work with.

When creating the next task, use all provided data such as previous tasks, the latest life goals, and any other meta-data (e.g., current time of day, weather) to customize a task that is a good next step. Select one life goal or combine multiple goals to create a task. Ensure the task is contextually relevant and specific to the user’s current situation. Make sure not to repeat a previous task or suggest a task that is too similar to a previous task.

Return a JSON object with the following variables:
- "description": A detailed description of the task.
- "title": A short version of the task.
- "why": An explanation of why this specific task is a good next step.
- "stepByStep": Instructions on how to complete the task easily.
- "success": A personalized message to display upon completing the task.

Example response:
{
  "title": "Reflect on Emotional Interaction",
  "description": "Spend 15 minutes today reflecting on a recent interaction where you felt your emotions strongly. What were you feeling? How did you react? How could you have handled it differently?",
  "why": "Reflecting on past interactions helps improve emotional intelligence by identifying patterns and understanding emotional triggers.",
  "stepByStep": [
    "Think about a recent interaction where you felt a strong emotion.",
    "Write down what you were feeling and how you reacted.",
    "Reflect on the situation and consider if there was a different way you could have handled it.",
    "Consider what you can learn from this experience and how you might react differently next time."
  ],
  "success": "Great job! Reflecting on your emotions is a big step toward improving your emotional intelligence.",
}''';

  Future<String> _createPrompt(Goal goal) async {
    final taskService = locator<TaskService>();

    final timeOfDay = TimeOfDay.now();
    final tasksLatest20 = await taskService.get20LatestAsync();

    final locale = locator<LocaleService>().locale;

    final totalSkippedTasks = taskService.totalSkippedTasks;
    final totalAbandonedTasks = taskService.totalAbandonedTasks;
    final totalCompletedTasks = taskService.totalCompletedTasks;

    return '''
Goal to create a task for:
- ${goal.title}

Meta data:
- Current time of day: ${timeOfDay.hour}:${timeOfDay.minute}
${locale != null ? '- Users current locale: ${locale.toLanguageTag()}' : ''}
- Total skipped tasks: $totalSkippedTasks
- Total abandoned tasks: $totalAbandonedTasks
- Total completed tasks: $totalCompletedTasks

Previous tasks (latest to oldest):
${tasksLatest20.map(_createPromptTaskItem).join('\n')}
'''
        .trim();

/*
TO ADD?
* Users current locale: 
* Current weather: 
* Current location:   */
  }

  String _createPromptTaskItem(Task task) => '''
- ${task.title}
  - State: ${_taskStateService.toText(task.state)}
${_createPromptTaskItemFeedback(task)}
'''
      .trim();

  String _createPromptTaskItemFeedback(Task task) {
    final taskFeedbackTypeService = locator<TaskFeedbackTypeService>();

    final feedback = task.feedback.target;
    if (feedback == null) {
      return '';
    }

    final buffer = StringBuffer();
    buffer.writeln('  - Feedback:');
    for (var type in feedback.types) {
      buffer.writeln('    - ${taskFeedbackTypeService.toText(type)}');
    }
    if (feedback.comment != null) {
      buffer.writeln('    - Comment: ${feedback.comment}');
    }

    return buffer.toString();
  }
}
