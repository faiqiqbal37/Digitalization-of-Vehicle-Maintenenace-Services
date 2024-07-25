import 'package:disertation/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class LoginServiceProviderViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();

  void siginInWithGoogle() {

  }

  void siginInWithEmail() {
    _navigationService.replaceWithServiceProviderHomeScreenView();
  }

  void navigateToRegister() {
    _navigationService.navigateToServiceProviderRegisterView();
  }

  void navigateToHome() {
    _navigationService.navigateToHomeView();
  }
}
