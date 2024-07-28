// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String CommentValueKey = 'comment';

final Map<String, TextEditingController>
    _TaskCurrentFeedbackFormTextEditingControllers = {};

final Map<String, FocusNode> _TaskCurrentFeedbackFormFocusNodes = {};

final Map<String, String? Function(String?)?>
    _TaskCurrentFeedbackFormTextValidations = {
  CommentValueKey: null,
};

mixin $TaskCurrentFeedbackForm {
  TextEditingController get commentController =>
      _getFormTextEditingController(CommentValueKey);

  FocusNode get commentFocusNode => _getFormFocusNode(CommentValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_TaskCurrentFeedbackFormTextEditingControllers.containsKey(key)) {
      return _TaskCurrentFeedbackFormTextEditingControllers[key]!;
    }

    _TaskCurrentFeedbackFormTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _TaskCurrentFeedbackFormTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_TaskCurrentFeedbackFormFocusNodes.containsKey(key)) {
      return _TaskCurrentFeedbackFormFocusNodes[key]!;
    }
    _TaskCurrentFeedbackFormFocusNodes[key] = FocusNode();
    return _TaskCurrentFeedbackFormFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    commentController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    commentController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          CommentValueKey: commentController.text,
        }),
    );

    if (_autoTextFieldValidation || forceValidate) {
      updateValidationData(model);
    }
  }

  bool validateFormFields(FormViewModel model) {
    _updateFormData(model, forceValidate: true);
    return model.isFormValid;
  }

  /// Calls dispose on all the generated controllers and focus nodes
  void disposeForm() {
    // The dispose function for a TextEditingController sets all listeners to null

    for (var controller
        in _TaskCurrentFeedbackFormTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _TaskCurrentFeedbackFormFocusNodes.values) {
      focusNode.dispose();
    }

    _TaskCurrentFeedbackFormTextEditingControllers.clear();
    _TaskCurrentFeedbackFormFocusNodes.clear();
  }
}

extension ValueProperties on FormStateHelper {
  bool get hasAnyValidationMessage => this
      .fieldsValidationMessages
      .values
      .any((validation) => validation != null);

  bool get isFormValid {
    if (!_autoTextFieldValidation) this.validateForm();

    return !hasAnyValidationMessage;
  }

  String? get commentValue => this.formValueMap[CommentValueKey] as String?;

  set commentValue(String? value) {
    this.setData(
      this.formValueMap..addAll({CommentValueKey: value}),
    );

    if (_TaskCurrentFeedbackFormTextEditingControllers.containsKey(
        CommentValueKey)) {
      _TaskCurrentFeedbackFormTextEditingControllers[CommentValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasComment =>
      this.formValueMap.containsKey(CommentValueKey) &&
      (commentValue?.isNotEmpty ?? false);

  bool get hasCommentValidationMessage =>
      this.fieldsValidationMessages[CommentValueKey]?.isNotEmpty ?? false;

  String? get commentValidationMessage =>
      this.fieldsValidationMessages[CommentValueKey];
}

extension Methods on FormStateHelper {
  setCommentValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CommentValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    commentValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      CommentValueKey: getValidationMessage(CommentValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _TaskCurrentFeedbackFormTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _TaskCurrentFeedbackFormTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      CommentValueKey: getValidationMessage(CommentValueKey),
    });
