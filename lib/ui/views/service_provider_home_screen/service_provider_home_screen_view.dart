import 'package:disertation/ui/views/common_components/service_provider/bottom_navigation.dart';
import 'package:disertation/ui/views/service_provider_home_screen/service_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'service_provider_home_screen_viewmodel.dart';

class ServiceProviderHomeScreenView extends StackedView<ServiceProviderHomeScreenViewModel> {
  const ServiceProviderHomeScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(BuildContext context, ServiceProviderHomeScreenViewModel viewModel, Widget? child) {
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
                      style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.star),
                    SizedBox(width: 8),
                    Text('4.5'),  // Assuming static rating; dynamically fetch if needed
                  ],
                ),
                SizedBox(height: 30),
                Container(
                  width: double.infinity, // This makes the container take up all available horizontal space
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0), // Add padding for better spacing inside the card
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start of the card
                        children: [
                          Text(
                            'Finances:',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Total Earnings: £${viewModel.totalEarnings.toStringAsFixed(2)}',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ),

                Text(
                  'Bookings:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Card(
                  color: Colors.white,
                  child: DataTable(
                    columns: const [
                      DataColumn(label: Text('Total Orders')),
                      DataColumn(label: Text('Pending')),
                      DataColumn(label: Text('Completed')),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(Text('${viewModel.totalBookings}')),
                          DataCell(Text('${viewModel.pendingBookings}')),
                          DataCell(Text('${viewModel.completedBookings}')),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Listed Services:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ListView.builder(
                  shrinkWrap: true, // Ensures the ListView takes up only as much space as it needs
                  physics: NeverScrollableScrollPhysics(), // Disables scrolling within the ListView
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
                              ElevatedButton(
                                onPressed: () =>
                                    viewModel.navigateToServiceDetail(
                                        viewModel.servicesNew[index].id),
                                child: Text('View'),
                                style: ElevatedButton.styleFrom(
                                  foregroundColor: Colors.white,
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0), // Adjust the radius here
                                  ),
                                ),
                              ),
                              SizedBox(width: 8),

                            ],
                          ),
                        ),
                      ),
                    );
                  },
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
    super.onViewModelReady(viewModel);
    viewModel.getServiceProviderName();
    viewModel.fetchFinanceData();
    viewModel.fetchBookingSummary();
    viewModel.fetchServices();
  }

  @override
  ServiceProviderHomeScreenViewModel viewModelBuilder(BuildContext context) =>
      ServiceProviderHomeScreenViewModel();
}
