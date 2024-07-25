import 'package:disertation/ui/views/login_service_provider/login_service_provider_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'login_service_provider_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'emailInput'),
  FormTextField(name: 'passwordInput'),
])
class LoginServiceProviderView
    extends StackedView<LoginServiceProviderViewModel> with $LoginServiceProviderView {
  const LoginServiceProviderView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginServiceProviderViewModel viewModel,
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
              'Login as a Service Provider',
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
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: viewModel.siginInWithEmail,
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
              onPressed: viewModel.navigateToHome,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }


  @override
  void onModelReady(LoginServiceProviderViewModel viewModel) {
    syncFormWithViewModel(viewModel);

  }

  @override
  LoginServiceProviderViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginServiceProviderViewModel();
}
