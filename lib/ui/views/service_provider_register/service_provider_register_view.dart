import 'package:disertation/ui/views/service_provider_register/service_provider_register_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'service_provider_register_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'email'),
  FormTextField(name: 'password'),
  FormTextField(name: 'confirmPassword'),
  FormTextField(name: 'firstName'),
  FormTextField(name: 'lastName'),
  FormTextField(name: 'businessName'),
  FormTextField(name: 'phone'),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Register as a Service Provider',
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
            SizedBox(height: 20),
            TextField(
              controller: lastNameController,
              decoration: InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: businessNameController,
              decoration: InputDecoration(
                labelText: 'Business Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: phoneController,
              decoration: InputDecoration(
                labelText: 'Phone',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.call),
              ),
            ),
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
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
              ),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: viewModel.register,
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
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
