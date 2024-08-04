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

  Future<void> showDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Profile Edited',
      description: ' ',
    );
    _navigationService.replaceWithCustomerProfileView();
  }

  void editCustomer() async {
    _customerService.updateCustomer(_authService.customer!.id, firstNameValue!,
        phoneValue!, lastNameValue!, emailValue!, null);
    notifyListeners();
    await showDialog();
  }
}
