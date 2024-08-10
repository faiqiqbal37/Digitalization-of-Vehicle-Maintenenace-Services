import 'package:disertation/ui/views/common_components/admin/admin_navigation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../customer_bookings/booking_card.dart';
import 'admin_bookings_viewmodel.dart';

class AdminBookingsView extends StackedView<AdminBookingsViewModel> {
  const AdminBookingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    AdminBookingsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Icon(Icons.calendar_month, size: 80, color: Colors.black),
          Text("Bookings",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          SizedBox(height: 20),
          Expanded(
            child: FutureBuilder<List<Map<String, dynamic>>>(
              future: viewModel.loadAllCustomerBookings(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        var booking = snapshot.data![index];
                        return AdminBookingCard(
                          serviceProviderName: booking['serviceProviderName'],
                          serviceName: booking['serviceName'],
                          date: booking['date'],
                          status: booking['status'],
                          email: booking['email'],
                          phone: booking['phone'],
                          price: booking['price'],
                          customerName: booking['customerName'],
                        );
                      },
                    );
                  } else if (snapshot.hasData && snapshot.data!.isEmpty) {
                    return Center(
                      child: Text('No bookings made yet.'),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  }
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: AdminBottomNavigationBar(),
    );
  }

  @override
  AdminBookingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      AdminBookingsViewModel();
}

class AdminBookingCard extends StatelessWidget {
  final String serviceProviderName;
  final String serviceName;
  final String date;
  final String status;
  final String price;
  final String phone;
  final String email;
  final String customerName;

  final _navigationService = locator<NavigationService>();

  AdminBookingCard(
      {required this.serviceProviderName,
      required this.serviceName,
      required this.date,
      required this.status,
      required this.price,
      required this.email,
      required this.customerName,
      required this.phone});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Customer Name: $customerName',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Service Name: $serviceName',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  Text('Service Provider Name: $serviceProviderName'),
                  SizedBox(height: 8),
                  Text('Price: £ $price'),
                  SizedBox(height: 8),
                  Text('Date: $date'),
                  SizedBox(height: 8),
                  Text('Status: $status',
                      style: TextStyle(
                          color: status == 'Completed'
                              ? Colors.green
                              : Colors.red)),
                  SizedBox(height: 8),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('View'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                shadowColor: Colors.blueAccent,
                elevation: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
