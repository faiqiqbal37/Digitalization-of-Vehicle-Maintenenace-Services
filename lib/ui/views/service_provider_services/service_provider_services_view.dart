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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset(
              'assets/service.png',
              fit: BoxFit.contain,
              height: 200,
            ),
            Text(
              "Services",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: viewModel.servicesNew.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Card(
                      color: Colors.white,
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        leading: Icon(Icons.build, color: Colors.black),
                        title: Text(
                          viewModel.servicesNew[index].serviceName,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                        subtitle: Text(
                          '${viewModel.servicesNew[index].serviceType} - Price: \£${viewModel.servicesNew[index].price}',
                          style:
                              TextStyle(fontSize: 16, color: Colors.grey[600]),
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            IconButton(
                              onPressed: () =>
                                  viewModel.navigateToServiceDetail(
                                      viewModel.servicesNew[index].id),
                              icon: Icon(Icons.description),
                            ),
                            SizedBox(width: 8),
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () => viewModel.navigateToEditDetail(
                                  viewModel.servicesNew[index].id),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.navigateToAddService();
        },
        foregroundColor: Colors.white,
        child: Icon(Icons.add),
        tooltip: 'Add a New Service',
        backgroundColor: Colors.blue,
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  @override
  void onViewModelReady(ServiceProviderServicesViewModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel.fetchServices();
  }

  @override
  ServiceProviderServicesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServiceProviderServicesViewModel();
}
