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

  Customer? returnCustomer(){
    return _authService.customer;
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
