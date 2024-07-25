// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String EmailValueKey = 'email';
const String PasswordValueKey = 'password';
const String ConfirmPasswordValueKey = 'confirmPassword';
const String FirstNameValueKey = 'firstName';
const String LastNameValueKey = 'lastName';
const String PhoneValueKey = 'phone';

final Map<String, TextEditingController>
    _CustomerRegisterViewTextEditingControllers = {};

final Map<String, FocusNode> _CustomerRegisterViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _CustomerRegisterViewTextValidations = {
  EmailValueKey: null,
  PasswordValueKey: null,
  ConfirmPasswordValueKey: null,
  FirstNameValueKey: null,
  LastNameValueKey: null,
  PhoneValueKey: null,
};

mixin $CustomerRegisterView {
  TextEditingController get emailController =>
      _getFormTextEditingController(EmailValueKey);
  TextEditingController get passwordController =>
      _getFormTextEditingController(PasswordValueKey);
  TextEditingController get confirmPasswordController =>
      _getFormTextEditingController(ConfirmPasswordValueKey);
  TextEditingController get firstNameController =>
      _getFormTextEditingController(FirstNameValueKey);
  TextEditingController get lastNameController =>
      _getFormTextEditingController(LastNameValueKey);
  TextEditingController get phoneController =>
      _getFormTextEditingController(PhoneValueKey);

  FocusNode get emailFocusNode => _getFormFocusNode(EmailValueKey);
  FocusNode get passwordFocusNode => _getFormFocusNode(PasswordValueKey);
  FocusNode get confirmPasswordFocusNode =>
      _getFormFocusNode(ConfirmPasswordValueKey);
  FocusNode get firstNameFocusNode => _getFormFocusNode(FirstNameValueKey);
  FocusNode get lastNameFocusNode => _getFormFocusNode(LastNameValueKey);
  FocusNode get phoneFocusNode => _getFormFocusNode(PhoneValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_CustomerRegisterViewTextEditingControllers.containsKey(key)) {
      return _CustomerRegisterViewTextEditingControllers[key]!;
    }

    _CustomerRegisterViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _CustomerRegisterViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_CustomerRegisterViewFocusNodes.containsKey(key)) {
      return _CustomerRegisterViewFocusNodes[key]!;
    }
    _CustomerRegisterViewFocusNodes[key] = FocusNode();
    return _CustomerRegisterViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    emailController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
    confirmPasswordController.addListener(() => _updateFormData(model));
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    phoneController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    emailController.addListener(() => _updateFormData(model));
    passwordController.addListener(() => _updateFormData(model));
    confirmPasswordController.addListener(() => _updateFormData(model));
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    phoneController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          EmailValueKey: emailController.text,
          PasswordValueKey: passwordController.text,
          ConfirmPasswordValueKey: confirmPasswordController.text,
          FirstNameValueKey: firstNameController.text,
          LastNameValueKey: lastNameController.text,
          PhoneValueKey: phoneController.text,
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

    for (var controller in _CustomerRegisterViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _CustomerRegisterViewFocusNodes.values) {
      focusNode.dispose();
    }

    _CustomerRegisterViewTextEditingControllers.clear();
    _CustomerRegisterViewFocusNodes.clear();
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

  String? get emailValue => this.formValueMap[EmailValueKey] as String?;
  String? get passwordValue => this.formValueMap[PasswordValueKey] as String?;
  String? get confirmPasswordValue =>
      this.formValueMap[ConfirmPasswordValueKey] as String?;
  String? get firstNameValue => this.formValueMap[FirstNameValueKey] as String?;
  String? get lastNameValue => this.formValueMap[LastNameValueKey] as String?;
  String? get phoneValue => this.formValueMap[PhoneValueKey] as String?;

  set emailValue(String? value) {
    this.setData(
      this.formValueMap..addAll({EmailValueKey: value}),
    );

    if (_CustomerRegisterViewTextEditingControllers.containsKey(
        EmailValueKey)) {
      _CustomerRegisterViewTextEditingControllers[EmailValueKey]?.text =
          value ?? '';
    }
  }

  set passwordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PasswordValueKey: value}),
    );

    if (_CustomerRegisterViewTextEditingControllers.containsKey(
        PasswordValueKey)) {
      _CustomerRegisterViewTextEditingControllers[PasswordValueKey]?.text =
          value ?? '';
    }
  }

  set confirmPasswordValue(String? value) {
    this.setData(
      this.formValueMap..addAll({ConfirmPasswordValueKey: value}),
    );

    if (_CustomerRegisterViewTextEditingControllers.containsKey(
        ConfirmPasswordValueKey)) {
      _CustomerRegisterViewTextEditingControllers[ConfirmPasswordValueKey]
          ?.text = value ?? '';
    }
  }

  set firstNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({FirstNameValueKey: value}),
    );

    if (_CustomerRegisterViewTextEditingControllers.containsKey(
        FirstNameValueKey)) {
      _CustomerRegisterViewTextEditingControllers[FirstNameValueKey]?.text =
          value ?? '';
    }
  }

  set lastNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LastNameValueKey: value}),
    );

    if (_CustomerRegisterViewTextEditingControllers.containsKey(
        LastNameValueKey)) {
      _CustomerRegisterViewTextEditingControllers[LastNameValueKey]?.text =
          value ?? '';
    }
  }

  set phoneValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PhoneValueKey: value}),
    );

    if (_CustomerRegisterViewTextEditingControllers.containsKey(
        PhoneValueKey)) {
      _CustomerRegisterViewTextEditingControllers[PhoneValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasEmail =>
      this.formValueMap.containsKey(EmailValueKey) &&
      (emailValue?.isNotEmpty ?? false);
  bool get hasPassword =>
      this.formValueMap.containsKey(PasswordValueKey) &&
      (passwordValue?.isNotEmpty ?? false);
  bool get hasConfirmPassword =>
      this.formValueMap.containsKey(ConfirmPasswordValueKey) &&
      (confirmPasswordValue?.isNotEmpty ?? false);
  bool get hasFirstName =>
      this.formValueMap.containsKey(FirstNameValueKey) &&
      (firstNameValue?.isNotEmpty ?? false);
  bool get hasLastName =>
      this.formValueMap.containsKey(LastNameValueKey) &&
      (lastNameValue?.isNotEmpty ?? false);
  bool get hasPhone =>
      this.formValueMap.containsKey(PhoneValueKey) &&
      (phoneValue?.isNotEmpty ?? false);

  bool get hasEmailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey]?.isNotEmpty ?? false;
  bool get hasPasswordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey]?.isNotEmpty ?? false;
  bool get hasConfirmPasswordValidationMessage =>
      this.fieldsValidationMessages[ConfirmPasswordValueKey]?.isNotEmpty ??
      false;
  bool get hasFirstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey]?.isNotEmpty ?? false;
  bool get hasLastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey]?.isNotEmpty ?? false;
  bool get hasPhoneValidationMessage =>
      this.fieldsValidationMessages[PhoneValueKey]?.isNotEmpty ?? false;

  String? get emailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey];
  String? get passwordValidationMessage =>
      this.fieldsValidationMessages[PasswordValueKey];
  String? get confirmPasswordValidationMessage =>
      this.fieldsValidationMessages[ConfirmPasswordValueKey];
  String? get firstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey];
  String? get lastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey];
  String? get phoneValidationMessage =>
      this.fieldsValidationMessages[PhoneValueKey];
}

extension Methods on FormStateHelper {
  setEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmailValueKey] = validationMessage;
  setPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PasswordValueKey] = validationMessage;
  setConfirmPasswordValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ConfirmPasswordValueKey] =
          validationMessage;
  setFirstNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[FirstNameValueKey] = validationMessage;
  setLastNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LastNameValueKey] = validationMessage;
  setPhoneValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PhoneValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    emailValue = '';
    passwordValue = '';
    confirmPasswordValue = '';
    firstNameValue = '';
    lastNameValue = '';
    phoneValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      EmailValueKey: getValidationMessage(EmailValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
      ConfirmPasswordValueKey: getValidationMessage(ConfirmPasswordValueKey),
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
      PhoneValueKey: getValidationMessage(PhoneValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _CustomerRegisterViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _CustomerRegisterViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      EmailValueKey: getValidationMessage(EmailValueKey),
      PasswordValueKey: getValidationMessage(PasswordValueKey),
      ConfirmPasswordValueKey: getValidationMessage(ConfirmPasswordValueKey),
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
      PhoneValueKey: getValidationMessage(PhoneValueKey),
    });
