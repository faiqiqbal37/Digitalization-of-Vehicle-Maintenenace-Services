import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../common_components/admin/admin_navigation.dart';
import 'admin_service_providers_viewmodel.dart';

class AdminServiceProvidersView
    extends StackedView<AdminServiceProvidersViewModel> {
  const AdminServiceProvidersView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AdminServiceProvidersViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Icon(Icons.person_2, size: 80, color: Colors.black),
          Text("Service Providers",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
                itemCount: viewModel.serviceProviders.length,
                itemBuilder: (context, index) {
                  return ServiceProviderCard(
                      businessName:
                          viewModel.serviceProviders[index].businessName,
                      email: viewModel.serviceProviders[index].email,
                      phone: viewModel.serviceProviders[index].phoneNumber);
                }),
          ),
        ],
      ),
      bottomNavigationBar: AdminBottomNavigationBar(),
    );
  }

  @override
  void onViewModelReady(AdminServiceProvidersViewModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel.fetchServiceProviders();
  }

  @override
  AdminServiceProvidersViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AdminServiceProvidersViewModel();
}

class ServiceProviderCard extends StatelessWidget {
  final String businessName;
  final String email;
  final String phone;

  ServiceProviderCard(
      {required this.businessName, required this.email, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Business Name: $businessName',
                style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 4),
            Text('Email: $email'),
            Text('Phone: $phone'),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  // Implement view details action
                },
                child: Text('View Details'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
