import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disertation/app/app.router.dart';
import 'package:disertation/ui/views/login/login_view.form.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/authentication_service.dart';

class LoginViewModel extends FormViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final _dialogService = locator<DialogService>();
  bool displayError = false;

  void siginInWithGoogle() {}

  void signInWithEmail() async {
    try {
      await _authService.loginCustomer(
          emailInputValue.toString(), passwordInputValue.toString());
      _navigationService.replaceWith(Routes.customerHomeView);
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

  void navigateToRegister() {
    _navigationService.navigateToCustomerRegisterView();
  }

  void navigateToHome() {
    _navigationService.navigateToHomeView();
  }
}
