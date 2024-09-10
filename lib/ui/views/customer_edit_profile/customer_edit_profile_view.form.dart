// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:disertation/ui/views/service_provider_register/form_validators.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String EmailValueKey = 'email';
const String FirstNameValueKey = 'firstName';
const String LastNameValueKey = 'lastName';
const String PhoneValueKey = 'phone';
const String UserLocationValueKey = 'userLocation';

final Map<String, TextEditingController>
    _CustomerEditProfileViewTextEditingControllers = {};

final Map<String, FocusNode> _CustomerEditProfileViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _CustomerEditProfileViewTextValidations = {
  EmailValueKey: ServiceProviderRegistrationFormValidation.validateEmail,
  FirstNameValueKey:
      ServiceProviderRegistrationFormValidation.validateFirstName,
  LastNameValueKey: ServiceProviderRegistrationFormValidation.validateLastName,
  PhoneValueKey: ServiceProviderRegistrationFormValidation.validatePhoneNumber,
  UserLocationValueKey:
      ServiceProviderRegistrationFormValidation.validateFirstName,
};

mixin $CustomerEditProfileView {
  TextEditingController get emailController =>
      _getFormTextEditingController(EmailValueKey);
  TextEditingController get firstNameController =>
      _getFormTextEditingController(FirstNameValueKey);
  TextEditingController get lastNameController =>
      _getFormTextEditingController(LastNameValueKey);
  TextEditingController get phoneController =>
      _getFormTextEditingController(PhoneValueKey);
  TextEditingController get userLocationController =>
      _getFormTextEditingController(UserLocationValueKey);

  FocusNode get emailFocusNode => _getFormFocusNode(EmailValueKey);
  FocusNode get firstNameFocusNode => _getFormFocusNode(FirstNameValueKey);
  FocusNode get lastNameFocusNode => _getFormFocusNode(LastNameValueKey);
  FocusNode get phoneFocusNode => _getFormFocusNode(PhoneValueKey);
  FocusNode get userLocationFocusNode =>
      _getFormFocusNode(UserLocationValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_CustomerEditProfileViewTextEditingControllers.containsKey(key)) {
      return _CustomerEditProfileViewTextEditingControllers[key]!;
    }

    _CustomerEditProfileViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _CustomerEditProfileViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_CustomerEditProfileViewFocusNodes.containsKey(key)) {
      return _CustomerEditProfileViewFocusNodes[key]!;
    }
    _CustomerEditProfileViewFocusNodes[key] = FocusNode();
    return _CustomerEditProfileViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    emailController.addListener(() => _updateFormData(model));
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    phoneController.addListener(() => _updateFormData(model));
    userLocationController.addListener(() => _updateFormData(model));

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
    firstNameController.addListener(() => _updateFormData(model));
    lastNameController.addListener(() => _updateFormData(model));
    phoneController.addListener(() => _updateFormData(model));
    userLocationController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          EmailValueKey: emailController.text,
          FirstNameValueKey: firstNameController.text,
          LastNameValueKey: lastNameController.text,
          PhoneValueKey: phoneController.text,
          UserLocationValueKey: userLocationController.text,
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
        in _CustomerEditProfileViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _CustomerEditProfileViewFocusNodes.values) {
      focusNode.dispose();
    }

    _CustomerEditProfileViewTextEditingControllers.clear();
    _CustomerEditProfileViewFocusNodes.clear();
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
  String? get firstNameValue => this.formValueMap[FirstNameValueKey] as String?;
  String? get lastNameValue => this.formValueMap[LastNameValueKey] as String?;
  String? get phoneValue => this.formValueMap[PhoneValueKey] as String?;
  String? get userLocationValue =>
      this.formValueMap[UserLocationValueKey] as String?;

  set emailValue(String? value) {
    this.setData(
      this.formValueMap..addAll({EmailValueKey: value}),
    );

    if (_CustomerEditProfileViewTextEditingControllers.containsKey(
        EmailValueKey)) {
      _CustomerEditProfileViewTextEditingControllers[EmailValueKey]?.text =
          value ?? '';
    }
  }

  set firstNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({FirstNameValueKey: value}),
    );

    if (_CustomerEditProfileViewTextEditingControllers.containsKey(
        FirstNameValueKey)) {
      _CustomerEditProfileViewTextEditingControllers[FirstNameValueKey]?.text =
          value ?? '';
    }
  }

  set lastNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LastNameValueKey: value}),
    );

    if (_CustomerEditProfileViewTextEditingControllers.containsKey(
        LastNameValueKey)) {
      _CustomerEditProfileViewTextEditingControllers[LastNameValueKey]?.text =
          value ?? '';
    }
  }

  set phoneValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PhoneValueKey: value}),
    );

    if (_CustomerEditProfileViewTextEditingControllers.containsKey(
        PhoneValueKey)) {
      _CustomerEditProfileViewTextEditingControllers[PhoneValueKey]?.text =
          value ?? '';
    }
  }

  set userLocationValue(String? value) {
    this.setData(
      this.formValueMap..addAll({UserLocationValueKey: value}),
    );

    if (_CustomerEditProfileViewTextEditingControllers.containsKey(
        UserLocationValueKey)) {
      _CustomerEditProfileViewTextEditingControllers[UserLocationValueKey]
          ?.text = value ?? '';
    }
  }

  bool get hasEmail =>
      this.formValueMap.containsKey(EmailValueKey) &&
      (emailValue?.isNotEmpty ?? false);
  bool get hasFirstName =>
      this.formValueMap.containsKey(FirstNameValueKey) &&
      (firstNameValue?.isNotEmpty ?? false);
  bool get hasLastName =>
      this.formValueMap.containsKey(LastNameValueKey) &&
      (lastNameValue?.isNotEmpty ?? false);
  bool get hasPhone =>
      this.formValueMap.containsKey(PhoneValueKey) &&
      (phoneValue?.isNotEmpty ?? false);
  bool get hasUserLocation =>
      this.formValueMap.containsKey(UserLocationValueKey) &&
      (userLocationValue?.isNotEmpty ?? false);

  bool get hasEmailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey]?.isNotEmpty ?? false;
  bool get hasFirstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey]?.isNotEmpty ?? false;
  bool get hasLastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey]?.isNotEmpty ?? false;
  bool get hasPhoneValidationMessage =>
      this.fieldsValidationMessages[PhoneValueKey]?.isNotEmpty ?? false;
  bool get hasUserLocationValidationMessage =>
      this.fieldsValidationMessages[UserLocationValueKey]?.isNotEmpty ?? false;

  String? get emailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey];
  String? get firstNameValidationMessage =>
      this.fieldsValidationMessages[FirstNameValueKey];
  String? get lastNameValidationMessage =>
      this.fieldsValidationMessages[LastNameValueKey];
  String? get phoneValidationMessage =>
      this.fieldsValidationMessages[PhoneValueKey];
  String? get userLocationValidationMessage =>
      this.fieldsValidationMessages[UserLocationValueKey];
}

extension Methods on FormStateHelper {
  setEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmailValueKey] = validationMessage;
  setFirstNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[FirstNameValueKey] = validationMessage;
  setLastNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LastNameValueKey] = validationMessage;
  setPhoneValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PhoneValueKey] = validationMessage;
  setUserLocationValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[UserLocationValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    emailValue = '';
    firstNameValue = '';
    lastNameValue = '';
    phoneValue = '';
    userLocationValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      EmailValueKey: getValidationMessage(EmailValueKey),
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
      PhoneValueKey: getValidationMessage(PhoneValueKey),
      UserLocationValueKey: getValidationMessage(UserLocationValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _CustomerEditProfileViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _CustomerEditProfileViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      EmailValueKey: getValidationMessage(EmailValueKey),
      FirstNameValueKey: getValidationMessage(FirstNameValueKey),
      LastNameValueKey: getValidationMessage(LastNameValueKey),
      PhoneValueKey: getValidationMessage(PhoneValueKey),
      UserLocationValueKey: getValidationMessage(UserLocationValueKey),
    });
