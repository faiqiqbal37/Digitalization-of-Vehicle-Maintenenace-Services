import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disertation/app/app.router.dart';
import 'package:disertation/services/authentication_service.dart';
import 'package:disertation/ui/views/customer_register/customer_register_view.form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../models/serviceprovider/serviceprovider.dart';

class LoginServiceProviderViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final _dialogService = locator<DialogService>();
  bool displayError = false;

  void siginInWithEmail() async {
    try {
      await _authService.loginUser(
          emailValue.toString(), passwordValue.toString());
      _navigationService.replaceWith(Routes.serviceProviderHomeScreenView);
    } catch (e) {
      String errorMessage = 'Failed to log in with provided credentials.';
      if (e is FirebaseAuthException) {
        errorMessage =
            e.message ?? 'Failed to log in with provided credentials.';
      }
      // Show a snackbar with the error message
      await _dialogService.showDialog(
        title: 'Error',
        description: errorMessage,
      );
    }
  }

  void siginInWithGoogle() {}

  void navigateToRegister() {
    _navigationService.navigateToServiceProviderRegisterView();
  }

  void navigateToHome() {
    _navigationService.navigateToHomeView();
  }
}
