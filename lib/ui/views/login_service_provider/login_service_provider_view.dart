import 'package:disertation/ui/views/login_service_provider/form_validator.dart';
import 'package:disertation/ui/views/login_service_provider/login_service_provider_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../common/ui_helpers.dart';
import 'login_service_provider_viewmodel.dart';

@FormView(fields: [
  FormTextField(
      name: 'email',
      validator: ServiceProviderLoginFormValidation.validateEmail),
  FormTextField(
      name: 'password',
      validator: ServiceProviderLoginFormValidation.validatePassword),
])
class LoginServiceProviderView
    extends StackedView<LoginServiceProviderViewModel>
    with $LoginServiceProviderView {
  const LoginServiceProviderView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginServiceProviderViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(height: 50,),
              Text(
                'Login as a Service Provider',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Image.asset(
                'assets/serviceProviderLogin.png',
                fit: BoxFit.contain,
                height: 300,
              ),
              TextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              verticalSpaceTiny,
              viewModel.hasEmailValidationMessage && viewModel.displayError
                  ? Text(viewModel.emailValidationMessage!,
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w700))
                  : SizedBox(height: 20),
              TextFormField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              verticalSpaceTiny,
              viewModel.hasEmailValidationMessage && viewModel.displayError
                  ? Text(viewModel.passwordValidationMessage!,
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w700))
                  : SizedBox(height: 30),
              ElevatedButton(
                onPressed: (){
                  viewModel.displayError = true;
                  viewModel.notifyListeners();
                  viewModel.siginInWithEmail();},
                child: Text('Sign in with Email'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Adjust the radius here
                  ),// Text color
                ),
              ),
              SizedBox(height: 10),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: viewModel.navigateToRegister,
                child: Text('Register'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  backgroundColor: Colors.white, // Background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Adjust the radius here
                  ),
                  side: BorderSide(
                    color: Colors.blue, // Border color
                    width: 1.5, // Border width
                  ),
        
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void onDispose(LoginServiceProviderViewModel viewModel) {
    super.onDispose(viewModel);
    viewModel.emailValue = "";
    viewModel.passwordValue = "";
    viewModel.displayError = false;
  }

  @override
  void onViewModelReady(LoginServiceProviderViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  LoginServiceProviderViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginServiceProviderViewModel();
}
