import 'package:disertation/ui/views/customer_register/customer_register_view.form.dart';
import 'package:disertation/ui/views/service_provider_register/form_validators.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../common/ui_helpers.dart';
import 'customer_register_viewmodel.dart';

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
      name: 'phone',
      validator: ServiceProviderRegistrationFormValidation.validatePhoneNumber),
])
class CustomerRegisterView extends StackedView<CustomerRegisterViewModel>
    with $CustomerRegisterView {
  const CustomerRegisterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerRegisterViewModel viewModel,
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
              'Register as a Customer',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
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
            SizedBox(height: 20),
            TextField(
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
            SizedBox(height: 20),
            TextField(
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
            SizedBox(height: 20),
            TextField(
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
            SizedBox(height: 20),
            TextField(
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
            SizedBox(height: 20),
            TextField(
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
            SizedBox(height: 20),
            TextButton(
              onPressed: viewModel.registerCustomer,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void onViewModelReady(CustomerRegisterViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  void onDispose(CustomerRegisterViewModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
  }

  @override
  CustomerRegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomerRegisterViewModel();
}
