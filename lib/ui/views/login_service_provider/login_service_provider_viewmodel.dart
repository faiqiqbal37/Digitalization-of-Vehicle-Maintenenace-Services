import 'package:disertation/app/app.router.dart';
import 'package:disertation/services/authentication_service.dart';
import 'package:disertation/ui/views/customer_register/customer_register_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginServiceProviderViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();

  void siginInWithEmail() {
    print(emailValue.toString());
    _authService.loginUser(emailValue.toString(), passwordValue.toString());
    _navigationService.replaceWithServiceProviderHomeScreenView();
  }

  void siginInWithGoogle() {
    _navigationService.replaceWithServiceProviderHomeScreenView();
  }

  void navigateToRegister() {
    _navigationService.navigateToServiceProviderRegisterView();
  }

  void navigateToHome() {
    _navigationService.navigateToHomeView();
  }
}
