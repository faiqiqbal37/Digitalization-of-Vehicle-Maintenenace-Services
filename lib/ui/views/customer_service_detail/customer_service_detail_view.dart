import 'package:disertation/ui/views/common_components/customer/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'customer_service_detail_viewmodel.dart';

class CustomerServiceDetailView
    extends StackedView<CustomerServiceDetailViewModel> {
  final String serviceId;

  const CustomerServiceDetailView({Key? key, required this.serviceId})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerServiceDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Service Detail'),
        centerTitle: true,
      ),
      body: FutureBuilder<Map<String, dynamic>>(
        future: viewModel.loadServiceDetail(serviceId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData && snapshot.data != null) {
              var serviceDetails = snapshot.data!;
              return ListView(
                padding: const EdgeInsets.all(16.0),
                children: [
                  Center(
                    child:
                        Icon(Icons.description, size: 110, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Card(
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
                          Text(
                            'Service Name',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 5),
                          Text(
                            serviceDetails["serviceName"] ?? "N/A",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Category',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 5),
                          Text(
                            serviceDetails["category"] ?? "N/A",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Service Provider',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 5),
                          Text(
                            serviceDetails["serviceProviderName"] ?? "N/A",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Description',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 5),
                          Text(
                            serviceDetails["description"] ?? "N/A",
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Time Duration',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 5),
                          Text(
                            serviceDetails["eta"] ?? "N/A",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Vehicle Type',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 5),
                          Text(
                            serviceDetails["vehicleType"] ?? "N/A",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Price',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '£${serviceDetails["price"] ?? "N/A"}',
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Card(
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
                          Text(
                            'Contact Information',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Phone',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 5),
                          Text(
                            serviceDetails["phone"] ?? "N/A",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Email',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 5),
                          Text(
                            serviceDetails["email"] ?? "N/A",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Location',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          SizedBox(height: 5),
                          Text(
                            serviceDetails["location"] ?? "N/A",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              return Center(child: Text('No data found.'));
            }
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
      bottomNavigationBar: CustomerBottomNavigationBar(),
    );
  }

  @override
  CustomerServiceDetailViewModel viewModelBuilder(BuildContext context) =>
      CustomerServiceDetailViewModel();
}
