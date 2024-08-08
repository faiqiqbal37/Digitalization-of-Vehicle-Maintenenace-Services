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
      appBar: AppBar(
        title: Text('Booking Detail'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child:
                    Icon(Icons.calendar_month, size: 110, color: Colors.black),
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
                        'Service Information',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        leading: Icon(Icons.build),
                        title:
                            Text(serviceName, style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        leading: Icon(Icons.garage),
                        title: Text(serviceProviderName,
                            style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        leading: Icon(Icons.monetization_on),
                        title: Text('£$price', style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        leading: Icon(Icons.phone),
                        title: Text(phone, style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        leading: Icon(Icons.email),
                        title: Text(email, style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        leading: Icon(Icons.location_on),
                        title: Text("null", style: TextStyle(fontSize: 15)),
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
                        'Booking Details',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      SizedBox(height: 20),
                      ListTile(
                        leading: Icon(Icons.date_range),
                        title: Text(date, style: TextStyle(fontSize: 15)),
                      ),
                      ListTile(
                        leading: Icon(Icons.check),
                        title: Text(status, style: TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomerBottomNavigationBar(),
    );
  }

  @override
  CustomerBookingDetailViewModel viewModelBuilder(BuildContext context) =>
      CustomerBookingDetailViewModel();
}
