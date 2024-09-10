// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedFormGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs, constant_identifier_names, non_constant_identifier_names,unnecessary_this

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

const bool _autoTextFieldValidation = true;

const String ServiceNameValueKey = 'serviceName';
const String DescriptionValueKey = 'description';
const String PriceValueKey = 'price';
const String EtaValueKey = 'ETA';

final Map<String, TextEditingController>
    _ServiceProviderEditServiceViewTextEditingControllers = {};

final Map<String, FocusNode> _ServiceProviderEditServiceViewFocusNodes = {};

final Map<String, String? Function(String?)?>
    _ServiceProviderEditServiceViewTextValidations = {
  ServiceNameValueKey: null,
  DescriptionValueKey: null,
  PriceValueKey: null,
  EtaValueKey: null,
};

mixin $ServiceProviderEditServiceView {
  TextEditingController get serviceNameController =>
      _getFormTextEditingController(ServiceNameValueKey);
  TextEditingController get descriptionController =>
      _getFormTextEditingController(DescriptionValueKey);
  TextEditingController get priceController =>
      _getFormTextEditingController(PriceValueKey);
  TextEditingController get etaController =>
      _getFormTextEditingController(EtaValueKey);

  FocusNode get serviceNameFocusNode => _getFormFocusNode(ServiceNameValueKey);
  FocusNode get descriptionFocusNode => _getFormFocusNode(DescriptionValueKey);
  FocusNode get priceFocusNode => _getFormFocusNode(PriceValueKey);
  FocusNode get etaFocusNode => _getFormFocusNode(EtaValueKey);

  TextEditingController _getFormTextEditingController(
    String key, {
    String? initialValue,
  }) {
    if (_ServiceProviderEditServiceViewTextEditingControllers.containsKey(
        key)) {
      return _ServiceProviderEditServiceViewTextEditingControllers[key]!;
    }

    _ServiceProviderEditServiceViewTextEditingControllers[key] =
        TextEditingController(text: initialValue);
    return _ServiceProviderEditServiceViewTextEditingControllers[key]!;
  }

  FocusNode _getFormFocusNode(String key) {
    if (_ServiceProviderEditServiceViewFocusNodes.containsKey(key)) {
      return _ServiceProviderEditServiceViewFocusNodes[key]!;
    }
    _ServiceProviderEditServiceViewFocusNodes[key] = FocusNode();
    return _ServiceProviderEditServiceViewFocusNodes[key]!;
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  void syncFormWithViewModel(FormStateHelper model) {
    serviceNameController.addListener(() => _updateFormData(model));
    descriptionController.addListener(() => _updateFormData(model));
    priceController.addListener(() => _updateFormData(model));
    etaController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Registers a listener on every generated controller that calls [model.setData()]
  /// with the latest textController values
  @Deprecated(
    'Use syncFormWithViewModel instead.'
    'This feature was deprecated after 3.1.0.',
  )
  void listenToFormUpdated(FormViewModel model) {
    serviceNameController.addListener(() => _updateFormData(model));
    descriptionController.addListener(() => _updateFormData(model));
    priceController.addListener(() => _updateFormData(model));
    etaController.addListener(() => _updateFormData(model));

    _updateFormData(model, forceValidate: _autoTextFieldValidation);
  }

  /// Updates the formData on the FormViewModel
  void _updateFormData(FormStateHelper model, {bool forceValidate = false}) {
    model.setData(
      model.formValueMap
        ..addAll({
          ServiceNameValueKey: serviceNameController.text,
          DescriptionValueKey: descriptionController.text,
          PriceValueKey: priceController.text,
          EtaValueKey: etaController.text,
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
        in _ServiceProviderEditServiceViewTextEditingControllers.values) {
      controller.dispose();
    }
    for (var focusNode in _ServiceProviderEditServiceViewFocusNodes.values) {
      focusNode.dispose();
    }

    _ServiceProviderEditServiceViewTextEditingControllers.clear();
    _ServiceProviderEditServiceViewFocusNodes.clear();
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

  String? get serviceNameValue =>
      this.formValueMap[ServiceNameValueKey] as String?;
  String? get descriptionValue =>
      this.formValueMap[DescriptionValueKey] as String?;
  String? get priceValue => this.formValueMap[PriceValueKey] as String?;
  String? get etaValue => this.formValueMap[EtaValueKey] as String?;

  set serviceNameValue(String? value) {
    this.setData(
      this.formValueMap..addAll({ServiceNameValueKey: value}),
    );

    if (_ServiceProviderEditServiceViewTextEditingControllers.containsKey(
        ServiceNameValueKey)) {
      _ServiceProviderEditServiceViewTextEditingControllers[ServiceNameValueKey]
          ?.text = value ?? '';
    }
  }

  set descriptionValue(String? value) {
    this.setData(
      this.formValueMap..addAll({DescriptionValueKey: value}),
    );

    if (_ServiceProviderEditServiceViewTextEditingControllers.containsKey(
        DescriptionValueKey)) {
      _ServiceProviderEditServiceViewTextEditingControllers[DescriptionValueKey]
          ?.text = value ?? '';
    }
  }

  set priceValue(String? value) {
    this.setData(
      this.formValueMap..addAll({PriceValueKey: value}),
    );

    if (_ServiceProviderEditServiceViewTextEditingControllers.containsKey(
        PriceValueKey)) {
      _ServiceProviderEditServiceViewTextEditingControllers[PriceValueKey]
          ?.text = value ?? '';
    }
  }

  set etaValue(String? value) {
    this.setData(
      this.formValueMap..addAll({EtaValueKey: value}),
    );

    if (_ServiceProviderEditServiceViewTextEditingControllers.containsKey(
        EtaValueKey)) {
      _ServiceProviderEditServiceViewTextEditingControllers[EtaValueKey]?.text =
          value ?? '';
    }
  }

  bool get hasServiceName =>
      this.formValueMap.containsKey(ServiceNameValueKey) &&
      (serviceNameValue?.isNotEmpty ?? false);
  bool get hasDescription =>
      this.formValueMap.containsKey(DescriptionValueKey) &&
      (descriptionValue?.isNotEmpty ?? false);
  bool get hasPrice =>
      this.formValueMap.containsKey(PriceValueKey) &&
      (priceValue?.isNotEmpty ?? false);
  bool get hasEta =>
      this.formValueMap.containsKey(EtaValueKey) &&
      (etaValue?.isNotEmpty ?? false);

  bool get hasServiceNameValidationMessage =>
      this.fieldsValidationMessages[ServiceNameValueKey]?.isNotEmpty ?? false;
  bool get hasDescriptionValidationMessage =>
      this.fieldsValidationMessages[DescriptionValueKey]?.isNotEmpty ?? false;
  bool get hasPriceValidationMessage =>
      this.fieldsValidationMessages[PriceValueKey]?.isNotEmpty ?? false;
  bool get hasEtaValidationMessage =>
      this.fieldsValidationMessages[EtaValueKey]?.isNotEmpty ?? false;

  String? get serviceNameValidationMessage =>
      this.fieldsValidationMessages[ServiceNameValueKey];
  String? get descriptionValidationMessage =>
      this.fieldsValidationMessages[DescriptionValueKey];
  String? get priceValidationMessage =>
      this.fieldsValidationMessages[PriceValueKey];
  String? get etaValidationMessage =>
      this.fieldsValidationMessages[EtaValueKey];
}

extension Methods on FormStateHelper {
  setServiceNameValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[ServiceNameValueKey] = validationMessage;
  setDescriptionValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[DescriptionValueKey] = validationMessage;
  setPriceValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[PriceValueKey] = validationMessage;
  setEtaValidationMessage(String? validationMessage) =>
      this.fieldsValidationMessages[EtaValueKey] = validationMessage;

  /// Clears text input fields on the Form
  void clearForm() {
    serviceNameValue = '';
    descriptionValue = '';
    priceValue = '';
    etaValue = '';
  }

  /// Validates text input fields on the Form
  void validateForm() {
    this.setValidationMessages({
      ServiceNameValueKey: getValidationMessage(ServiceNameValueKey),
      DescriptionValueKey: getValidationMessage(DescriptionValueKey),
      PriceValueKey: getValidationMessage(PriceValueKey),
      EtaValueKey: getValidationMessage(EtaValueKey),
    });
  }
}

/// Returns the validation message for the given key
String? getValidationMessage(String key) {
  final validatorForKey = _ServiceProviderEditServiceViewTextValidations[key];
  if (validatorForKey == null) return null;

  String? validationMessageForKey = validatorForKey(
    _ServiceProviderEditServiceViewTextEditingControllers[key]!.text,
  );

  return validationMessageForKey;
}

/// Updates the fieldsValidationMessages on the FormViewModel
void updateValidationData(FormStateHelper model) =>
    model.setValidationMessages({
      ServiceNameValueKey: getValidationMessage(ServiceNameValueKey),
      DescriptionValueKey: getValidationMessage(DescriptionValueKey),
      PriceValueKey: getValidationMessage(PriceValueKey),
      EtaValueKey: getValidationMessage(EtaValueKey),
    });
