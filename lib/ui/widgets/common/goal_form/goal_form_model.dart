import 'package:stacked/stacked.dart';
import 'package:the_task/models/goal_model.dart';
import 'package:the_task/ui/widgets/common/goal_form/goal_form.form.dart';

class GoalFormModel extends FormViewModel {
  final Function(Goal) _onSubmit;

  GoalFormModel(this._onSubmit);

  @override
  void setFormStatus() => updateValidationMessage();

  void submit() {
    if (!updateValidationMessage()) {
      return;
    }

    final goal = Goal(title: titleValue!);
    _onSubmit(goal);
  }

  bool updateValidationMessage() {
    final validationMessage = titleValue == null || titleValue!.isEmpty
        ? 'Title cannot be empty'
        : null;

    setValidationMessage(validationMessage);
    return validationMessage == null;
  }
}
