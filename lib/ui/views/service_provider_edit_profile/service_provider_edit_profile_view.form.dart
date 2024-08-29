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
const String FirstnameValueKey = 'firstname';
const String LastnameValueKey = 'lastname';
const String CompanyNameValueKey = 'companyName';
const String PhoneValueKey = 'phone';
const String LocationValueKey = 'location';

final Map<String, TextEditingController>
    _ServiceProviderEditProfileViewTextEditingControllers = {};

final Map<String, FocusNode> _ServiceProviderEditProfileViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _ServiceProviderEditProfileViewTextValidations = {
  EmailValueKey: ServiceProviderRegistrationFormValidation.validateEmail,
  FirstnameValueKey:
      ServiceProviderRegistrationFormValidation.validateFirstName,
  LastnameValueKey: ServiceProviderRegistrationFormValidation.validateLastName,
  CompanyNameValueKey:
      ServiceProviderRegistrationFormValidation.validateLastName,
  PhoneValueKey: ServiceProviderRegistrationFormValidation.validatePhoneNumber,
  LocationValueKey: ServiceProviderRegistrationFormValidation.validateFirstName,
};

mixin $ServiceProviderEditProfileView {
  TextEditingController get emailController =>
      _getFormTextEditingController(EmailValueKey);
  TextEditingController get firstnameController =>
      _getFormTextEditingController(FirstnameValueKey);
  TextEditingController get lastnameController =>
      _getFormTextEditingController(LastnameValueKey);
  TextEditingController get companyNameController =>
      _getFormTextEditingController(CompanyNameValueKey);
  TextEditingController get phoneController =>
      _getFormTextEditingController(PhoneValueKey);
  TextEditingController get locationController =>
      _getFormTextEditingController(LocationValueKey);

  FocusNode get emailFocusNode => _getFormFocusNode(EmailValueKey);
  FocusNode get firstnameFocusNode => _getFormFocusNode(FirstnameValueKey);
  FocusNode get lastnameFocusNode => _getFormFocusNode(LastnameValueKey);
  FocusNode get companyNameFocusNode => _getFormFocusNode(CompanyNameValueKey);
  FocusNode get phoneFocusNode => _getFormFocusNode(PhoneValueKey);
  FocusNode get locationFocusNode => _getFormFocusNode(LocationValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_ServiceProviderEditProfileViewTextEditingControllers.containsKey(
        key)) {
      return _ServiceProviderEditProfileViewTextEditingControllers[key]!;
    }

    _ServiceProviderEditProfileViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _ServiceProviderEditProfileViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_ServiceProviderEditProfileViewFocusNodes.containsKey(key)) {
      return _ServiceProviderEditProfileViewFocusNodes[key]!;
    }
    _ServiceProviderEditProfileViewFocusNodes[key] = FocusNode();
    return _ServiceProviderEditProfileViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    emailController.addListener(() => _updateFormData(model));
    firstnameController.addListener(() => _updateFormData(model));
    lastnameController.addListener(() => _updateFormData(model));
    companyNameController.addListener(() => _updateFormData(model));
    phoneController.addListener(() => _updateFormData(model));
    locationController.addListener(() => _updateFormData(model));

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
    firstnameController.addListener(() => _updateFormData(model));
    lastnameController.addListener(() => _updateFormData(model));
    companyNameController.addListener(() => _updateFormData(model));
    phoneController.addListener(() => _updateFormData(model));
    locationController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          EmailValueKey: emailController.text,
          FirstnameValueKey: firstnameController.text,
          LastnameValueKey: lastnameController.text,
          CompanyNameValueKey: companyNameController.text,
          PhoneValueKey: phoneController.text,
          LocationValueKey: locationController.text,
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
        in _ServiceProviderEditProfileViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _ServiceProviderEditProfileViewFocusNodes.values) {
      focusNode.dispose();
    }

    _ServiceProviderEditProfileViewTextEditingControllers.clear();
    _ServiceProviderEditProfileViewFocusNodes.clear();
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
  String? get firstnameValue => this.formValueMap[FirstnameValueKey] as String?;
  String? get lastnameValue => this.formValueMap[LastnameValueKey] as String?;
  String? get companyNameValue =>
      this.formValueMap[CompanyNameValueKey] as String?;
  String? get phoneValue => this.formValueMap[PhoneValueKey] as String?;
  String? get locationValue => this.formValueMap[LocationValueKey] as String?;

  set emailValue(String? value) {
    this.setData(
      this.formValueMap..addAll({EmailValueKey: value}),
    );

    if (_ServiceProviderEditProfileViewTextEditingControllers.containsKey(
        EmailValueKey)) {
      _ServiceProviderEditProfileViewTextEditingControllers[EmailValueKey]
          ?.text = value ?? '';
    }
  }

  set firstnameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({FirstnameValueKey: value}),
    );

    if (_ServiceProviderEditProfileViewTextEditingControllers.containsKey(
        FirstnameValueKey)) {
      _ServiceProviderEditProfileViewTextEditingControllers[FirstnameValueKey]
          ?.text = value ?? '';
    }
  }

  set lastnameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LastnameValueKey: value}),
    );

    if (_ServiceProviderEditProfileViewTextEditingControllers.containsKey(
        LastnameValueKey)) {
      _ServiceProviderEditProfileViewTextEditingControllers[LastnameValueKey]
          ?.text = value ?? '';
    }
  }

  set companyNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({CompanyNameValueKey: value}),
    );

    if (_ServiceProviderEditProfileViewTextEditingControllers.containsKey(
        CompanyNameValueKey)) {
      _ServiceProviderEditProfileViewTextEditingControllers[CompanyNameValueKey]
          ?.text = value ?? '';
    }
  }

  set phoneValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PhoneValueKey: value}),
    );

    if (_ServiceProviderEditProfileViewTextEditingControllers.containsKey(
        PhoneValueKey)) {
      _ServiceProviderEditProfileViewTextEditingControllers[PhoneValueKey]
          ?.text = value ?? '';
    }
  }

  set locationValue(String? value) {
    this.setData(
      this.formValueMap..addAll({LocationValueKey: value}),
    );

    if (_ServiceProviderEditProfileViewTextEditingControllers.containsKey(
        LocationValueKey)) {
      _ServiceProviderEditProfileViewTextEditingControllers[LocationValueKey]
          ?.text = value ?? '';
    }
  }

  bool get hasEmail =>
      this.formValueMap.containsKey(EmailValueKey) &&
      (emailValue?.isNotEmpty ?? false);
  bool get hasFirstname =>
      this.formValueMap.containsKey(FirstnameValueKey) &&
      (firstnameValue?.isNotEmpty ?? false);
  bool get hasLastname =>
      this.formValueMap.containsKey(LastnameValueKey) &&
      (lastnameValue?.isNotEmpty ?? false);
  bool get hasCompanyName =>
      this.formValueMap.containsKey(CompanyNameValueKey) &&
      (companyNameValue?.isNotEmpty ?? false);
  bool get hasPhone =>
      this.formValueMap.containsKey(PhoneValueKey) &&
      (phoneValue?.isNotEmpty ?? false);
  bool get hasLocation =>
      this.formValueMap.containsKey(LocationValueKey) &&
      (locationValue?.isNotEmpty ?? false);

  bool get hasEmailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey]?.isNotEmpty ?? false;
  bool get hasFirstnameValidationMessage =>
      this.fieldsValidationMessages[FirstnameValueKey]?.isNotEmpty ?? false;
  bool get hasLastnameValidationMessage =>
      this.fieldsValidationMessages[LastnameValueKey]?.isNotEmpty ?? false;
  bool get hasCompanyNameValidationMessage =>
      this.fieldsValidationMessages[CompanyNameValueKey]?.isNotEmpty ?? false;
  bool get hasPhoneValidationMessage =>
      this.fieldsValidationMessages[PhoneValueKey]?.isNotEmpty ?? false;
  bool get hasLocationValidationMessage =>
      this.fieldsValidationMessages[LocationValueKey]?.isNotEmpty ?? false;

  String? get emailValidationMessage =>
      this.fieldsValidationMessages[EmailValueKey];
  String? get firstnameValidationMessage =>
      this.fieldsValidationMessages[FirstnameValueKey];
  String? get lastnameValidationMessage =>
      this.fieldsValidationMessages[LastnameValueKey];
  String? get companyNameValidationMessage =>
      this.fieldsValidationMessages[CompanyNameValueKey];
  String? get phoneValidationMessage =>
      this.fieldsValidationMessages[PhoneValueKey];
  String? get locationValidationMessage =>
      this.fieldsValidationMessages[LocationValueKey];
}

extension Methods on FormStateHelper {
  setEmailValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EmailValueKey] = validationMessage;
  setFirstnameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[FirstnameValueKey] = validationMessage;
  setLastnameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LastnameValueKey] = validationMessage;
  setCompanyNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CompanyNameValueKey] = validationMessage;
  setPhoneValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PhoneValueKey] = validationMessage;
  setLocationValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[LocationValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    emailValue = '';
    firstnameValue = '';
    lastnameValue = '';
    companyNameValue = '';
    phoneValue = '';
    locationValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      EmailValueKey: getValidationMessage(EmailValueKey),
      FirstnameValueKey: getValidationMessage(FirstnameValueKey),
      LastnameValueKey: getValidationMessage(LastnameValueKey),
      CompanyNameValueKey: getValidationMessage(CompanyNameValueKey),
      PhoneValueKey: getValidationMessage(PhoneValueKey),
      LocationValueKey: getValidationMessage(LocationValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _ServiceProviderEditProfileViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _ServiceProviderEditProfileViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      EmailValueKey: getValidationMessage(EmailValueKey),
      FirstnameValueKey: getValidationMessage(FirstnameValueKey),
      LastnameValueKey: getValidationMessage(LastnameValueKey),
      CompanyNameValueKey: getValidationMessage(CompanyNameValueKey),
      PhoneValueKey: getValidationMessage(PhoneValueKey),
      LocationValueKey: getValidationMessage(LocationValueKey),
    });
