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
          Text('Service Categories',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                ElevatedButton(
                    onPressed: () =>
                        viewModel.fetchServicesBasedOnCategory("Electrical"),
                    // Action or navigation
                    child: Text('Electrical')),
                ElevatedButton(
                    onPressed: () =>
                        viewModel.fetchServicesBasedOnCategory("Paint"),
                    // Action or navigation
                    child: Text('Paint')),
                ElevatedButton(
                    onPressed: () =>
                        viewModel.fetchServicesBasedOnCategory("Bodywork"),
                    // Action or navigation
                    child: Text('Bodywork')),
                ElevatedButton(
                    onPressed: () =>
                        viewModel.fetchServicesBasedOnCategory("Mechanical"),
                    // Action or navigation
                    child: Text('Mechanical')),
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
                  );
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
  }

  @override
  CustomerServicesViewModel viewModelBuilder(BuildContext context) =>
      CustomerServicesViewModel();
}
