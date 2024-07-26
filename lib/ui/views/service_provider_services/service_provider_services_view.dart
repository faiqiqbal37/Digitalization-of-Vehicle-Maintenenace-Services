import 'package:disertation/ui/views/common_components/service_provider/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'service_provider_services_viewmodel.dart';

class ServiceProviderServicesView
    extends StackedView<ServiceProviderServicesViewModel> {
  const ServiceProviderServicesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ServiceProviderServicesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Services'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Icon(Icons.car_repair, size: 100, color: Colors.black),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: viewModel.services.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(Icons.build),
                    title: Text(viewModel.services[index]['name']),
                    subtitle: Text(
                        '${viewModel.services[index]['type']} - ${viewModel.services[index]['price']}'),
                    trailing: ElevatedButton(
                      onPressed: () {
                        // Handle edit action
                      },
                      child: Text('Edit'),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue, // Text color
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.navigateToAddService();
        },
        child: Icon(Icons.add),
        tooltip: 'Add a New Service',
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  @override
  ServiceProviderServicesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServiceProviderServicesViewModel();
}
