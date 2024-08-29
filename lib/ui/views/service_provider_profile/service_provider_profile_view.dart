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
          Image.asset(
            'assets/profile.png',
            fit: BoxFit.contain,
            height: 110,
          ),
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
          ProfileItem(
              title: "Address",
              content: viewModel.serviceProvider.location.toString()),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              onPressed: viewModel.navigateToEditScreen,
              child: Text('Edit Details'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent,
                textStyle: TextStyle(fontSize: 16),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Adjust the radius here
                ),
                side: BorderSide(
                  color: Colors.blue, // Border color
                  width: 1.5, // Border width
                ),
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
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(8.0), // Adjust the radius here
                ),
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
