import 'package:disertation/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class InitialSelectionScreenViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToCustomerLogin() {
    _navigationService.navigateToLoginView();
  }

  void navigateToServiceProviderLogin() {
    _navigationService.navigateToLoginServiceProviderView();
  }

  void navigateToAdmin() {
    _navigationService.navigateToAdminHomeView();
  }
}
