import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disertation/app/app.router.dart';
import 'package:disertation/services/authentication_service.dart';
import 'package:disertation/ui/views/customer_register/customer_register_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../models/serviceprovider/serviceprovider.dart';

class LoginServiceProviderViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  void siginInWithEmail() {
    print(emailValue.toString());
    _authService.loginUser(emailValue.toString(), passwordValue.toString());
    _navigationService.replaceWithServiceProviderHomeScreenView();
  }

  void siginInWithGoogle() {}

  void navigateToRegister() {
    _navigationService.navigateToServiceProviderRegisterView();
  }

  void navigateToHome() {
    _navigationService.navigateToHomeView();
  }
}
