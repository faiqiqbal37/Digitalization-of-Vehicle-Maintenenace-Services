import 'package:disertation/ui/common/ui_helpers.dart';
import 'package:disertation/ui/views/service_provider_register/form_validators.dart';
import 'package:disertation/ui/views/service_provider_register/service_provider_register_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'service_provider_register_viewmodel.dart';

@FormView(fields: [
  FormTextField(
      name: 'email',
      validator: ServiceProviderRegistrationFormValidation.validateEmail),
  FormTextField(
      name: 'password',
      validator: ServiceProviderRegistrationFormValidation.validatePassword),
  FormTextField(
      name: 'confirmPassword',
      validator: ServiceProviderRegistrationFormValidation.validatePassword),
  FormTextField(
      name: 'firstName',
      validator: ServiceProviderRegistrationFormValidation.validateFirstName),
  FormTextField(
      name: 'lastName',
      validator: ServiceProviderRegistrationFormValidation.validateLastName),
  FormTextField(
      name: 'businessName',
      validator:
          ServiceProviderRegistrationFormValidation.validateBusinessName),
  FormTextField(
      name: 'phone',
      validator: ServiceProviderRegistrationFormValidation.validatePhoneNumber),
])
class ServiceProviderRegisterView
    extends StackedView<ServiceProviderRegisterViewModel>
    with $ServiceProviderRegisterView {
  const ServiceProviderRegisterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ServiceProviderRegisterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        // Add this widget
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
            Text(
              'Register as a Service Provider',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextFormField(
              controller: firstNameController,
              decoration: InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            verticalSpaceTiny,
            viewModel.hasFirstNameValidationMessage
                ? Text(viewModel.firstNameValidationMessage!,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w700))
                : SizedBox(height: 20),
            TextFormField(
              controller: lastNameController,
              decoration: InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            verticalSpaceTiny,
            viewModel.hasLastNameValidationMessage
                ? Text(viewModel.lastNameValidationMessage!,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w700))
                : SizedBox(height: 20),
            TextFormField(
              controller: businessNameController,
              decoration: InputDecoration(
                labelText: 'Business Name',
                border: OutlineInputBorder(),
              ),
            ),
            verticalSpaceTiny,
            viewModel.hasBusinessNameValidationMessage
                ? Text(viewModel.businessNameValidationMessage!,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w700))
                : SizedBox(height: 20),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.call),
              ),
            ),
            verticalSpaceTiny,
            viewModel.hasPhoneValidationMessage
                ? Text(viewModel.phoneValidationMessage!,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w700))
                : SizedBox(height: 20),
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
            viewModel.hasEmailValidationMessage
                ? Text(viewModel.emailValidationMessage!,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w700))
                : SizedBox(height: 20),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
              ),
            ),
            verticalSpaceTiny,
            viewModel.hasPasswordValidationMessage
                ? Text(viewModel.passwordValidationMessage!,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w700))
                : SizedBox(height: 20),
            TextFormField(
              controller: confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
              ),
            ),
            verticalSpaceTiny,
            viewModel.hasPasswordValidationMessage
                ? Text(viewModel.passwordValidationMessage!,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w700))
                : SizedBox(height: 20),
            TextButton(
              onPressed: viewModel.registerUser,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    ));
  }

  @override
  void onDispose(ServiceProviderRegisterViewModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
  }

  @override
  void onViewModelReady(ServiceProviderRegisterViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  ServiceProviderRegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServiceProviderRegisterViewModel();
}
