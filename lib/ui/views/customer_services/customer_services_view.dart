import 'package:disertation/ui/views/customer_services/service_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../common_components/customer/navigation_bar.dart';
import '../customer_home/category_widget.dart';
import 'customer_services_viewmodel.dart';

class CustomerServicesView extends StackedView<CustomerServicesViewModel> {
  const CustomerServicesView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerServicesViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Services',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search for Services.",
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(height: 30),
          Text('Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                categoryButton(viewModel, 'Electrical'),
                categoryButton(viewModel, 'Paint'),
                categoryButton(viewModel, 'Bodywork'),
                categoryButton(viewModel, 'Mechanical'),


              ],
            ),
          ),
          // Expanded(
          //   child: ListView(
          //     children: [
          //       CustomerServiceCard(
          //         serviceProviderName: "Matwatson",
          //         serviceName: "AC Repair",
          //         price: "200",
          //         eta: "2 hours",
          //         vehicleType: "SUV", description: 'AC Service',
          //       ),
          //     ],
          //   ),
          // ),

          Expanded(
            child: ListView.builder(
                itemCount: viewModel.servicesNew.length,
                itemBuilder: (context, index) {
                  return CustomerServiceCard(
                      serviceProviderName:
                          viewModel.servicesNew[index].serviceName,
                      serviceName: viewModel.servicesNew[index].serviceType,
                      price: viewModel.servicesNew[index].price,
                      eta: viewModel.servicesNew[index].eta,
                      vehicleType: viewModel.servicesNew[index].vehicleType,
                      description: viewModel.servicesNew[index].description,
                      customerId: viewModel.customer.id,
                      onButtonPressed: viewModel.notifyListeners,
                      serviceId: viewModel.servicesNew[index].id,
                      serviceProviderId:
                          viewModel.servicesNew[index].serviceProviderId);
                }),
          ),
        ],
      ),
      bottomNavigationBar: CustomerBottomNavigationBar(),
    );
  }

  @override
  void onViewModelReady(CustomerServicesViewModel viewModel) {
    super.onViewModelReady(viewModel);
    viewModel.fetchServices();
    viewModel.fetchCustomer();
  }

  @override
  CustomerServicesViewModel viewModelBuilder(BuildContext context) =>
      CustomerServicesViewModel();
}

Widget categoryButton(CustomerServicesViewModel viewModel, String category) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5.0), // Add horizontal padding
    child: ElevatedButton(
      onPressed: () => viewModel.selectCategory(category),
      child: Text(category),
      style: TextButton.styleFrom(
        foregroundColor: viewModel.selectedCategory == category
            ? Colors.white
            : Colors.blue,
        backgroundColor: viewModel.selectedCategory == category
            ? Colors.blue
            : Colors.white,
        shadowColor: Colors.blueAccent,
      ),
    ),
  );
}

