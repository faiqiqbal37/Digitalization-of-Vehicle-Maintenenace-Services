import 'package:disertation/ui/views/common_components/service_provider/bottom_navigation.dart';
import 'package:disertation/ui/views/service_provider_profile/profile_item.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'service_provider_profile_viewmodel.dart';

class ServiceProviderProfileView
    extends StackedView<ServiceProviderProfileViewModel> {
  const ServiceProviderProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ServiceProviderProfileViewModel viewModel,
    Widget? child,
  ) {
    final Color appBackgroundColor = Theme.of(context).scaffoldBackgroundColor;

    return Scaffold(
      backgroundColor: appBackgroundColor,

      body: ListView(
        children: [
          SizedBox(height: 50),
          Icon(Icons.account_circle, size: 100, color: Colors.black),
          SizedBox(height: 20),
          ProfileItem(
              title: "Name",
              content:
                  "${viewModel.serviceProvider.firstname} ${viewModel.serviceProvider.lastname}"),
          ProfileItem(
              title: "Company",
              content: viewModel.serviceProvider.businessName),
          ProfileItem(
              title: "Phone", content: viewModel.serviceProvider.phoneNumber),
          ProfileItem(title: "Email", content: viewModel.serviceProvider.email),
          ProfileItem(title: "Address", content: "23 JAMES ST, S4 7TL"),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              onPressed: viewModel.navigateToEditScreen,
              child: Text('Edit Details'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              onPressed: viewModel.logout,
              child: Text('Log Out'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.red,
                textStyle: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  @override
  void onViewModelReady(ServiceProviderProfileViewModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel.returnServiceProvider();
  }

  @override
  ServiceProviderProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServiceProviderProfileViewModel();
}
