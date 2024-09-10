import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';
import 'package:disertation/services/authentication_service.dart';
import 'package:disertation/services/customer_service.dart';
import 'package:disertation/ui/views/customer_edit_profile/customer_edit_profile_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';

class CustomerEditProfileViewModel extends FormViewModel {
  final _authService = locator<AuthenticationService>();
  final _customerService = locator<CustomerService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  void initializeForm() {
    // Initialize the form with existing customer values
    if (_authService.customer != null) {
      firstNameValue = _authService.customer!.firstname;
      lastNameValue = _authService.customer!.lastname;
      phoneValue = _authService.customer!.phoneNumber;
      emailValue = _authService.customer!.email;
    }
  }

  Future<void> showDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Profile Edited',
      description: 'Your profile has been successfully updated.',
    );
    _navigationService.replaceWithCustomerProfileView();
  }

  void editCustomer() async {
    final customer = _authService.customer;
    if (customer == null) return;

    // Use the existing customer values if the form fields are empty
    final updatedFirstName = firstNameValue?.isNotEmpty == true
        ? firstNameValue!
        : customer.firstname;
    final updatedLastName =
        lastNameValue?.isNotEmpty == true ? lastNameValue! : customer.lastname;
    final updatedPhone =
        phoneValue?.isNotEmpty == true ? phoneValue! : customer.phoneNumber;
    final updatedEmail =
        emailValue?.isNotEmpty == true ? emailValue! : customer.email;

    // Update the customer with the new or existing values
    await _customerService.updateCustomer(
      customer.id,
      updatedFirstName,
      updatedPhone,
      updatedLastName,
      updatedEmail,
      null,
    );

    notifyListeners();
    await showDialog();
  }
}
