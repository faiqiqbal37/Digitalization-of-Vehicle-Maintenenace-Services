import 'package:disertation/ui/views/login_service_provider/form_validator.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../common/ui_helpers.dart';
import 'login_viewmodel.dart';
import 'login_view.form.dart';

@FormView(fields: [
  FormTextField(
      name: 'emailInput',
      validator: ServiceProviderLoginFormValidation.validateEmail),
  FormTextField(
      name: 'passwordInput',
      validator: ServiceProviderLoginFormValidation.validatePassword),
])
class LoginView extends StackedView<LoginViewModel> with $LoginView {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Login as a Customer',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              controller: emailInputController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            verticalSpaceTiny,
            viewModel.hasEmailInputValidationMessage
                ? Text(viewModel.emailInputValidationMessage!,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w700))
                : SizedBox(height: 20),
            SizedBox(height: 20),
            TextField(
              controller: passwordInputController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            verticalSpaceTiny,
            viewModel.hasPasswordInputValidationMessage
                ? Text(viewModel.passwordInputValidationMessage!,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w700))
                : SizedBox(height: 30),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: viewModel.signInWithEmail,
              child: Text('Sign in with Email'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: viewModel.siginInWithGoogle,
              child: Text('Sign in with Google'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.redAccent),
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: viewModel.navigateToRegister,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void onViewModelReady(LoginViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  void onDispose(LoginViewModel viewModel) {
    super.onDispose(viewModel);
    viewModel.emailInputValue = "";
    viewModel.passwordInputValue = "";
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
