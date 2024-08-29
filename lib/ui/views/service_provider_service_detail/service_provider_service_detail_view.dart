import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../common_components/service_provider/bottom_navigation.dart';
import 'service_provider_service_detail_viewmodel.dart';

class ServiceProviderServiceDetailView
    extends StackedView<ServiceProviderServiceDetailViewModel> {
  final String serviceId;
  const ServiceProviderServiceDetailView({Key? key, required this.serviceId})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ServiceProviderServiceDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Detail'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          color: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/serviceNew.png',
                    fit: BoxFit.contain,
                    height: 200,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'Service Name: ${viewModel.serviceDetail.serviceName}',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Category: ${viewModel.serviceDetail.serviceType}',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Description: ${viewModel.serviceDetail.description}',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Time Duration: ${viewModel.serviceDetail.eta}',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Vehicle Type: ${viewModel.serviceDetail.vehicleType}',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                Text(
                  'Price: \£${viewModel.serviceDetail.price}',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Divider(),
                SizedBox(height: 10),
                Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          viewModel.navigateToEditDetails(serviceId);
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors
                              .blue, // Different color for differentiation
                        ),
                        child: Text('Edit Details'),
                      ),
                      ElevatedButton(
                        onPressed: () => viewModel.deleteServiceById(serviceId),
                        child: Text('Delete Service'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor:
                              Colors.red, // Different color for differentiation
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  @override
  void onViewModelReady(ServiceProviderServiceDetailViewModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel.fetchServiceBasedOnId(serviceId);
  }

  @override
  ServiceProviderServiceDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServiceProviderServiceDetailViewModel();
}
