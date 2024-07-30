import 'package:disertation/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();

  void siginInWithGoogle() {}

  void siginInWithEmail() {
    _navigationService.replaceWith(Routes.customerHomeView);
  }

  void navigateToRegister() {
    _navigationService.navigateToCustomerRegisterView();
  }

  void navigateToHome() {
    _navigationService.navigateToHomeView();
  }
}
