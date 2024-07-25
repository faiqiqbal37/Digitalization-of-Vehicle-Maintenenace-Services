// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String EmailInputValueKey = 'emailInput';
const String PasswordInputValueKey = 'passwordInput';

final Map<String, TextEditingController>
    _LoginServiceProviderViewTextEditingControllers = {};

final Map<String, FocusNode> _LoginServiceProviderViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _LoginServiceProviderViewTextValidations = {
  EmailInputValueKey: null,
  PasswordInputValueKey: null,
};

mixin $LoginServiceProviderView {
  TextEditingController get emailInputController =>
      _getFormTextEditingController(EmailInputValueKey);
  TextEditingController get passwordInputController =>
      _getFormTextEditingController(PasswordInputValueKey);

  FocusNode get emailInputFocusNode => _getFormFocusNode(EmailInputValueKey);
  FocusNode get passwordInputFocusNode =>
      _getFormFocusNode(PasswordInputValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_LoginServiceProviderViewTextEditingControllers.containsKey(key)) {
      return _LoginServiceProviderViewTextEditingControllers[key]!;
    }

    _LoginServiceProviderViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _LoginServiceProviderViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_LoginServiceProviderViewFocusNodes.containsKey(key)) {
      return _LoginServiceProviderViewFocusNodes[key]!;
    }
    _LoginServiceProviderViewFocusNodes[key] = FocusNode();
    return _LoginServiceProviderViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    emailInputController.addListener(() => _updateFormData(model));
    passwordInputController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    emailInputController.addListener(() => _updateFormData(model));
    passwordInputController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          EmailInputValueKey: emailInputController.text,
          PasswordInputValueKey: passwordInputController.text,
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
        in _LoginServiceProviderViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _LoginServiceProviderViewFocusNodes.values) {
      focusNode.dispose();
    }

    _LoginServiceProviderViewTextEditingControllers.clear();
    _LoginServiceProviderViewFocusNodes.clear();
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

  String? get emailInputValue =>
      this.formValueMap[EmailInputValueKey] as String?;
  String? get passwordInputValue =>
      this.formValueMap[PasswordInputValueKey] as String?;

  set emailInputValue(String? value) {
    this.setData(
      this.formValueMap..addAll({EmailInputValueKey: value}),
    );

    if (_LoginServiceProviderViewTextEditingControllers.containsKey(
        EmailInputValueKey)) {
      _LoginServiceProviderViewTextEditingControllers[EmailInputValueKey]
          ?.text = value ?? '';
    }
  }

  set passwordInputValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PasswordInputValueKey: value}),
    );

    if (_LoginServiceProviderViewTextEditingControllers.containsKey(
        PasswordInputValueKey)) {
      _LoginServiceProviderViewTextEditingControllers[PasswordInputValueKey]
          ?.text = value ?? '';
    }
  }

  bool get hasEmailInput =>
      this.formValueMap.containsKey(EmailInputValueKey) &&
      (emailInputValue?.isNotEmpty ?? false);
  bool get hasPasswordInput =>
      this.formValueMap.containsKey(PasswordInputValueKey) &&
      (passwordInputValue?.isNotEmpty ?? false);

  bool get hasEmailInputValidationMessage =>
      this.fieldsValidationMessages[EmailInputValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordInputValidationMessage =>
      this.fieldsValidationMessages[PasswordInputValueKey]?.isNotEmpty ?? false;

  String? get emailInputValidationMessage =>
      this.fieldsValidationMessages[EmailInputValueKey];
  String? get passwordInputValidationMessage =>
      this.fieldsValidationMessages[PasswordInputValueKey];
}

extension Methods on FormStateHelper {
  setEmailInputValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmailInputValueKey] = validationMessage;
  setPasswordInputValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordInputValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    emailInputValue = '';
    passwordInputValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      EmailInputValueKey: getValidationMessage(EmailInputValueKey),
      PasswordInputValueKey: getValidationMessage(PasswordInputValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _LoginServiceProviderViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _LoginServiceProviderViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      EmailInputValueKey: getValidationMessage(EmailInputValueKey),
      PasswordInputValueKey: getValidationMessage(PasswordInputValueKey),
    });
