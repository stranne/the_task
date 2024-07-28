import 'package:stacked/stacked.dart';
import 'package:the_task/app/app.locator.dart';
import 'package:the_task/services/task_current_service.dart';

class TaskCurrentCreatingFailedModel extends BaseViewModel {
  Future<void> retryCreateTaskAsync() async {
    await locator<TaskCurrentService>().createAsync();
  }
}
