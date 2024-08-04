import 'package:disertation/ui/views/customer_edit_profile/customer_edit_profile_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import '../../common/ui_helpers.dart';
import '../service_provider_register/form_validators.dart';
import 'customer_edit_profile_viewmodel.dart';

@FormView(fields: [
  FormTextField(
      name: 'email',
      validator: ServiceProviderRegistrationFormValidation.validateEmail),
  FormTextField(
      name: 'firstName',
      validator: ServiceProviderRegistrationFormValidation.validateFirstName),
  FormTextField(
      name: 'lastName',
      validator: ServiceProviderRegistrationFormValidation.validateLastName),
  FormTextField(
      name: 'phone',
      validator: ServiceProviderRegistrationFormValidation.validatePhoneNumber),
  FormTextField(
      name: 'userLocation',
      validator: ServiceProviderRegistrationFormValidation.validateFirstName),
])
class CustomerEditProfileView extends StackedView<CustomerEditProfileViewModel>
    with $CustomerEditProfileView {
  const CustomerEditProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerEditProfileViewModel viewModel,
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
            TextButton(
              onPressed: viewModel.editCustomer,
              child: Text('Edit'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void onViewModelReady(CustomerEditProfileViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  CustomerEditProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomerEditProfileViewModel();

  @override
  void onDispose(CustomerEditProfileViewModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
  }
}
