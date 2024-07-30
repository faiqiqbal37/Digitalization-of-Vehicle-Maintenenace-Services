import 'package:disertation/ui/views/common_components/customer/navigation_bar.dart';
import 'package:disertation/ui/views/customer_profile/profile_item.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'customer_profile_viewmodel.dart';

class CustomerProfileView extends StackedView<CustomerProfileViewModel> {
  const CustomerProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          SizedBox(height: 20),
          Icon(Icons.account_circle, size: 100, color: Colors.black),
          SizedBox(height: 20),
          ProfileItem(title: "Name", content: "Michael Jordan"),
          ProfileItem(title: "Phone", content: "+44078965125"),
          ProfileItem(title: "Email", content: "michael@jordan.com"),
          ProfileItem(title: "Address", content: "23 JAMES ST, S4 7TL"),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Edit Details'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                textStyle: TextStyle(fontSize: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                  side: BorderSide(color: Colors.black),
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
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomerBottomNavigationBar(),
    );
  }

  @override
  CustomerProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomerProfileViewModel();
}
