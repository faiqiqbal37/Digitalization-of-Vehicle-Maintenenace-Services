// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String CarMakeValueKey = 'carMake';
const String RegistrationValueKey = 'registration';
const String VehicleTypeValueKey = 'vehicleType';
const String ModelValueKey = 'model';

final Map<String, TextEditingController>
    _CustomerAddCarsViewTextEditingControllers = {};

final Map<String, FocusNode> _CustomerAddCarsViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _CustomerAddCarsViewTextValidations = {
  CarMakeValueKey: null,
  RegistrationValueKey: null,
  VehicleTypeValueKey: null,
  ModelValueKey: null,
};

mixin $CustomerAddCarsView {
  TextEditingController get carMakeController =>
      _getFormTextEditingController(CarMakeValueKey);
  TextEditingController get registrationController =>
      _getFormTextEditingController(RegistrationValueKey);
  TextEditingController get vehicleTypeController =>
      _getFormTextEditingController(VehicleTypeValueKey);
  TextEditingController get modelController =>
      _getFormTextEditingController(ModelValueKey);

  FocusNode get carMakeFocusNode => _getFormFocusNode(CarMakeValueKey);
  FocusNode get registrationFocusNode =>
      _getFormFocusNode(RegistrationValueKey);
  FocusNode get vehicleTypeFocusNode => _getFormFocusNode(VehicleTypeValueKey);
  FocusNode get modelFocusNode => _getFormFocusNode(ModelValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_CustomerAddCarsViewTextEditingControllers.containsKey(key)) {
      return _CustomerAddCarsViewTextEditingControllers[key]!;
    }

    _CustomerAddCarsViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _CustomerAddCarsViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_CustomerAddCarsViewFocusNodes.containsKey(key)) {
      return _CustomerAddCarsViewFocusNodes[key]!;
    }
    _CustomerAddCarsViewFocusNodes[key] = FocusNode();
    return _CustomerAddCarsViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    carMakeController.addListener(() => _updateFormData(model));
    registrationController.addListener(() => _updateFormData(model));
    vehicleTypeController.addListener(() => _updateFormData(model));
    modelController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    carMakeController.addListener(() => _updateFormData(model));
    registrationController.addListener(() => _updateFormData(model));
    vehicleTypeController.addListener(() => _updateFormData(model));
    modelController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          CarMakeValueKey: carMakeController.text,
          RegistrationValueKey: registrationController.text,
          VehicleTypeValueKey: vehicleTypeController.text,
          ModelValueKey: modelController.text,
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

    for (var controller in _CustomerAddCarsViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _CustomerAddCarsViewFocusNodes.values) {
      focusNode.dispose();
    }

    _CustomerAddCarsViewTextEditingControllers.clear();
    _CustomerAddCarsViewFocusNodes.clear();
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

  String? get carMakeValue => this.formValueMap[CarMakeValueKey] as String?;
  String? get registrationValue =>
      this.formValueMap[RegistrationValueKey] as String?;
  String? get vehicleTypeValue =>
      this.formValueMap[VehicleTypeValueKey] as String?;
  String? get modelValue => this.formValueMap[ModelValueKey] as String?;

  set carMakeValue(String? value) {
    this.setData(
      this.formValueMap..addAll({CarMakeValueKey: value}),
    );

    if (_CustomerAddCarsViewTextEditingControllers.containsKey(
        CarMakeValueKey)) {
      _CustomerAddCarsViewTextEditingControllers[CarMakeValueKey]?.text =
          value ?? '';
    }
  }

  set registrationValue(String? value) {
    this.setData(
      this.formValueMap..addAll({RegistrationValueKey: value}),
    );

    if (_CustomerAddCarsViewTextEditingControllers.containsKey(
        RegistrationValueKey)) {
      _CustomerAddCarsViewTextEditingControllers[RegistrationValueKey]?.text =
          value ?? '';
    }
  }

  set vehicleTypeValue(String? value) {
    this.setData(
      this.formValueMap..addAll({VehicleTypeValueKey: value}),
    );

    if (_CustomerAddCarsViewTextEditingControllers.containsKey(
        VehicleTypeValueKey)) {
      _CustomerAddCarsViewTextEditingControllers[VehicleTypeValueKey]?.text =
          value ?? '';
    }
  }

  set modelValue(String? value) {
    this.setData(
      this.formValueMap..addAll({ModelValueKey: value}),
    );

    if (_CustomerAddCarsViewTextEditingControllers.containsKey(ModelValueKey)) {
      _CustomerAddCarsViewTextEditingControllers[ModelValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasCarMake =>
      this.formValueMap.containsKey(CarMakeValueKey) &&
      (carMakeValue?.isNotEmpty ?? false);
  bool get hasRegistration =>
      this.formValueMap.containsKey(RegistrationValueKey) &&
      (registrationValue?.isNotEmpty ?? false);
  bool get hasVehicleType =>
      this.formValueMap.containsKey(VehicleTypeValueKey) &&
      (vehicleTypeValue?.isNotEmpty ?? false);
  bool get hasModel =>
      this.formValueMap.containsKey(ModelValueKey) &&
      (modelValue?.isNotEmpty ?? false);

  bool get hasCarMakeValidationMessage =>
      this.fieldsValidationMessages[CarMakeValueKey]?.isNotEmpty ?? false;
  bool get hasRegistrationValidationMessage =>
      this.fieldsValidationMessages[RegistrationValueKey]?.isNotEmpty ?? false;
  bool get hasVehicleTypeValidationMessage =>
      this.fieldsValidationMessages[VehicleTypeValueKey]?.isNotEmpty ?? false;
  bool get hasModelValidationMessage =>
      this.fieldsValidationMessages[ModelValueKey]?.isNotEmpty ?? false;

  String? get carMakeValidationMessage =>
      this.fieldsValidationMessages[CarMakeValueKey];
  String? get registrationValidationMessage =>
      this.fieldsValidationMessages[RegistrationValueKey];
  String? get vehicleTypeValidationMessage =>
      this.fieldsValidationMessages[VehicleTypeValueKey];
  String? get modelValidationMessage =>
      this.fieldsValidationMessages[ModelValueKey];
}

extension Methods on FormStateHelper {
  setCarMakeValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[CarMakeValueKey] = validationMessage;
  setRegistrationValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[RegistrationValueKey] = validationMessage;
  setVehicleTypeValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[VehicleTypeValueKey] = validationMessage;
  setModelValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ModelValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    carMakeValue = '';
    registrationValue = '';
    vehicleTypeValue = '';
    modelValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      CarMakeValueKey: getValidationMessage(CarMakeValueKey),
      RegistrationValueKey: getValidationMessage(RegistrationValueKey),
      VehicleTypeValueKey: getValidationMessage(VehicleTypeValueKey),
      ModelValueKey: getValidationMessage(ModelValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _CustomerAddCarsViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _CustomerAddCarsViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      CarMakeValueKey: getValidationMessage(CarMakeValueKey),
      RegistrationValueKey: getValidationMessage(RegistrationValueKey),
      VehicleTypeValueKey: getValidationMessage(VehicleTypeValueKey),
      ModelValueKey: getValidationMessage(ModelValueKey),
    });
