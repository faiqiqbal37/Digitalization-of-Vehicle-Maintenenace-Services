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
                CategoryWidget(title: 'Electrical'),
                CategoryWidget(title: 'Paint'),
                CategoryWidget(title: 'Bodywork'),
                CategoryWidget(title: 'Mechanical'),
                CategoryWidget(title: 'Wrap'),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                CustomerServiceCard(serviceProviderName: "Matwatson", serviceName: "AC Repair", price: "200", eta: "2 hours"),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomerBottomNavigationBar(),
    );
  }

  @override
  CustomerServicesViewModel viewModelBuilder(BuildContext context) => CustomerServicesViewModel();
}
