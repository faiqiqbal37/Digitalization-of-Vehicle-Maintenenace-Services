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
      body: Column(
        children: [
          SizedBox(height: 60),
          Icon(Icons.car_repair, size: 80, color: Colors.black),
          Text("Services",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: viewModel.servicesNew.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(height: 8),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.build),
                        title: Text(viewModel.servicesNew[index].serviceName),
                        subtitle: Text(
                            '${viewModel.servicesNew[index].serviceType} - ${viewModel.servicesNew[index].price}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize
                              .min, // This ensures the Row only takes needed space
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () =>
                                  viewModel.navigateToServiceDetail(
                                      viewModel.servicesNew[index].id),
                              child: Text('View'),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors
                                    .blue, // Different color for differentiation
                              ),
                            ),
                            SizedBox(width: 8), // Spacing between buttons
                            ElevatedButton(
                              onPressed: () => viewModel.navigateToEditDetail(
                                  viewModel.servicesNew[index].id),
                              child: Text('Edit'),
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.blue, // Text color
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
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
  void onViewModelReady(ServiceProviderServicesViewModel viewModel) {
    // TODO: implement onViewModelReady
    super.onViewModelReady(viewModel);
    viewModel.fetchServices();
  }

  @override
  ServiceProviderServicesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServiceProviderServicesViewModel();
}
