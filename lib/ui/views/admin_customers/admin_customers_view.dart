import 'package:disertation/ui/views/common_components/admin/admin_navigation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'admin_customers_viewmodel.dart';

class AdminCustomersView extends StackedView<AdminCustomersViewModel> {
  const AdminCustomersView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AdminCustomersViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Icon(Icons.person_2, size: 80, color: Colors.black),
          Text("Customers",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
                itemCount: viewModel.customersNew.length,
                itemBuilder: (context, index) {
                  return CustomerCard(
                    name: viewModel.customersNew[index].firstname +
                        viewModel.customersNew[index].lastname,
                    email: viewModel.customersNew[index].email,
                    phone: viewModel.customersNew[index].phoneNumber,
                  );
                }),
          ),
        ],
      ),
      bottomNavigationBar: AdminBottomNavigationBar(),
    );
  }

  @override
  void onViewModelReady(AdminCustomersViewModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel.fetchCustomers();
  }

  @override
  AdminCustomersViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AdminCustomersViewModel();
}

class CustomerCard extends StatelessWidget {
  final String name;
  final String email;
  final String phone;

  CustomerCard({required this.name, required this.email, required this.phone});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Customer Name: $name',
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
