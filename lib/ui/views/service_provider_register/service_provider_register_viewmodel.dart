import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disertation/app/app.router.dart';
import 'package:disertation/models/serviceprovider/serviceprovider.dart';
import 'package:disertation/services/authentication_service.dart';
import 'package:disertation/services/registration_service.dart';
import 'package:disertation/ui/views/service_provider_register/service_provider_register_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';

class ServiceProviderRegisterViewModel extends FormViewModel {
  final _registrationService = locator<RegistrationService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  bool displayError = false;


  Future<void> showRegistrationDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Registeration Complete',
      description: 'Service Provider Registered Successfully',
    );
    _navigationService.clearStackAndShow(Routes.loginServiceProviderView);
  }

  Future<void> registerUser() async {
    {
      try {
        ServiceProvider newServiceProvider = ServiceProvider(
          id: DateTime.now()
              .millisecondsSinceEpoch
              .toString(), // or any other logic to generate a unique id
          firstname: firstNameValue.toString(),
          lastname: lastNameValue.toString(),
          businessName: businessNameValue.toString(),
          phoneNumber: phoneValue.toString(),
          email: emailValue.toString(),
          password: passwordValue.toString(),
        );

        await _registrationService.registerServiceProvider(newServiceProvider);
        showRegistrationDialog();
      } catch (e) {}
    }
  }
}
