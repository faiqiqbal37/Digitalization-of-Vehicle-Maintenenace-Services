import 'package:disertation/services/customer_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../models/customer/customer.dart';
import '../../../services/authentication_service.dart';

class CustomerProfileViewModel extends BaseViewModel {
  final _authService = locator<AuthenticationService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _customerService = locator<CustomerService>();
  Customer customer = Customer(
      id: "id",
      firstname: "firstname",
      lastname: "lastname",
      phoneNumber: "phoneNumber",
      email: "email",
      password: "password");

  Future<Customer> returnCustomer() async {
    customer =
        await _customerService.fetchCustomerById(_authService.customer!.id);
    notifyListeners();
    return customer;
  }

  void navigateToEditDetailsScreen() {
    _navigationService.navigateToCustomerEditProfileView();
  }

  Future<void> showDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Signed Out',
      description: 'Signed Out Successfully',
    );
    _navigationService.clearStackAndShow(Routes.initialSelectionScreenView);
  }

  void logout() {
    _authService.signOut();
    showDialog();
  }
}
