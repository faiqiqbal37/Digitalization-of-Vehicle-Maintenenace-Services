import 'package:disertation/ui/views/common_components/service_provider/bottom_navigation.dart';
import 'package:disertation/ui/views/service_provider_home_screen/service_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'service_provider_home_screen_viewmodel.dart';

class ServiceProviderHomeScreenView
    extends StackedView<ServiceProviderHomeScreenViewModel> {
  const ServiceProviderHomeScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ServiceProviderHomeScreenViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      viewModel.serviceProviderName,
                      style:
                          TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.star),
                    SizedBox(width: 8),
                    Text('4.5'),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'Finances:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Total Earnings: \$1000',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                Text(
                  'Orders:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                DataTable(
                  columns: const [
                    DataColumn(label: Text('Total Orders')),
                    DataColumn(label: Text('Pending')),
                    DataColumn(label: Text('Completed')),
                  ],
                  rows: const [
                    DataRow(
                      cells: [
                        DataCell(Text('202')),
                        DataCell(Text('2')),
                        DataCell(Text('200')),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Listed Services:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ServiceCard(
                  service: 'Car Detailing',
                  duration: '4-5 Hrs',
                  price: '\$25',
                ),
                ServiceCard(
                  service: 'Engine Over Haul',
                  duration: '6-7 Hrs',
                  price: '\$750',
                ),
                ServiceCard(
                  service: 'AC Servicing',
                  duration: '4-5 Hrs',
                  price: '\$250',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  @override
  void onViewModelReady(ServiceProviderHomeScreenViewModel viewModel) {
    viewModel.getServiceProviderName();
    viewModel.notifyListeners();
  }

  @override
  ServiceProviderHomeScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServiceProviderHomeScreenViewModel();
}
