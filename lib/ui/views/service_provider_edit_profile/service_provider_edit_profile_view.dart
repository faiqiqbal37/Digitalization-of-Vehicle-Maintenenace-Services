import 'package:disertation/ui/views/service_provider_edit_profile/service_provider_edit_profile_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../common/ui_helpers.dart';
import '../service_provider_register/form_validators.dart';
import 'service_provider_edit_profile_viewmodel.dart';

@FormView(fields: [
  FormTextField(
      name: 'email',
      validator: ServiceProviderRegistrationFormValidation.validateEmail),
  FormTextField(
      name: 'firstname',
      validator: ServiceProviderRegistrationFormValidation.validateFirstName),
  FormTextField(
      name: 'lastname',
      validator: ServiceProviderRegistrationFormValidation.validateLastName),
  FormTextField(
      name: 'companyName',
      validator: ServiceProviderRegistrationFormValidation.validateLastName),
  FormTextField(
      name: 'phone',
      validator: ServiceProviderRegistrationFormValidation.validatePhoneNumber),
  FormTextField(
      name: 'Location',
      validator: ServiceProviderRegistrationFormValidation.validateFirstName),
])
class ServiceProviderEditProfileView
    extends StackedView<ServiceProviderEditProfileViewModel>
    with $ServiceProviderEditProfileView {
  const ServiceProviderEditProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ServiceProviderEditProfileViewModel viewModel,
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
              'Edit Details',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              controller: firstnameController,
              decoration: InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            verticalSpaceTiny,
            viewModel.hasFirstnameValidationMessage
                ? Text(viewModel.firstnameValidationMessage!,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w700))
                : SizedBox(height: 20),
            SizedBox(height: 20),
            TextField(
              controller: lastnameController,
              decoration: InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.person),
              ),
            ),
            verticalSpaceTiny,
            viewModel.hasLastnameValidationMessage
                ? Text(viewModel.lastnameValidationMessage!,
                    style: const TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.w700))
                : SizedBox(height: 20),
            SizedBox(height: 20),
            TextField(
              controller: companyNameController,
              decoration: InputDecoration(
                labelText: 'Business name',
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.call),
              ),
            ),
            verticalSpaceTiny,
            viewModel.hasCompanyNameValidationMessage
                ? Text(viewModel.companyNameValidationMessage!,
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
            TextButton(
              onPressed: viewModel.editServiceProvider,
              child: Text('Edit'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void onViewModelReady(ServiceProviderEditProfileViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  ServiceProviderEditProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServiceProviderEditProfileViewModel();

  @override
  void onDispose(ServiceProviderEditProfileViewModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
  }
}
