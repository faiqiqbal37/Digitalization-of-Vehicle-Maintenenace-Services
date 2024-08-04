import 'package:disertation/ui/views/common_components/customer/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'customer_booking_detail_viewmodel.dart';

class CustomerBookingDetailView
    extends StackedView<CustomerBookingDetailViewModel> {
  final String serviceName;
  final String serviceProviderName;
  final String price;
  final String phone;
  final String email;
  final String date;
  final String status;

  const CustomerBookingDetailView(
      {Key? key,
      required this.phone,
      required this.email,
      required this.price,
      required this.date,
      required this.serviceName,
      required this.serviceProviderName,
      required this.status})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerBookingDetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Icon(Icons.calendar_month, size: 70, color: Colors.black),
          Text("Booking Detail",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          SizedBox(height: 20),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Service Information:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    ListTile(
                      leading: Icon(Icons.build),
                      title: Text(serviceName),
                    ),
                    ListTile(
                      leading: Icon(Icons.garage),
                      title: Text(serviceProviderName),
                    ),
                    ListTile(
                      leading: Icon(Icons.monetization_on),
                      title: Text(price),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text(phone),
                    ),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text(email),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text("null"),
                    ),
                    SizedBox(height: 20),
                    Text('Booking Details:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    ListTile(
                      leading: Icon(Icons.date_range),
                      title: Text(date),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text(status),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomerBottomNavigationBar(),
    );
  }

  @override
  CustomerBookingDetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomerBookingDetailViewModel();
}
