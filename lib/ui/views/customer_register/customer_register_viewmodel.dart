import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disertation/ui/views/service_provider_register/service_provider_register_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../models/customer/customer.dart';
import '../../../services/authentication_service.dart';
import '../../../services/registration_service.dart';

class CustomerRegisterViewModel extends FormViewModel {
  final _registrationService = locator<RegistrationService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  Future<void> showRegistrationDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Registeration Complete',
      description: 'Customer Registered Successfully',
    );
    _navigationService.clearStackAndShow(Routes.loginView);
  }

  Future<void> registerCustomer() async {
    {
      try {
        Customer customer = Customer(
          id: DateTime.now()
              .millisecondsSinceEpoch
              .toString(), // or any other logic to generate a unique id
          firstname: firstNameValue.toString(),
          lastname: lastNameValue.toString(),
          phoneNumber: phoneValue.toString(),
          email: emailValue.toString(),
          password: passwordValue.toString(),
        );

        await _registrationService.registerCustomer(customer);
        showRegistrationDialog();
      } catch (e) {}
    }
  }
}
