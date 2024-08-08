import 'dart:core';

import 'package:disertation/ui/views/common_components/service_provider/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'service_provider_bookingdetail_viewmodel.dart';

class ServiceProviderBookingdetailView
    extends StackedView<ServiceProviderBookingdetailViewModel> {
  final String customerName;
  final String customerPhone;
  final String email;
  final String location;
  final String serviceName;
  final String servicePrice;
  final String serviceCategory;
  final String date;
  final String status;
  final String bookingId;

  const ServiceProviderBookingdetailView(
      {Key? key,
      required this.customerName,
      required this.email,
      required this.bookingId,
      required this.serviceName,
      required this.location,
      required this.customerPhone,
      required this.status,
      required this.date,
      required this.serviceCategory,
      required this.servicePrice})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ServiceProviderBookingdetailViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child:
                  Icon(Icons.calendar_today, size: 50, color: Colors.grey[700]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 4,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Customer Info',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      leading: Icon(Icons.person, color: Colors.blue),
                      tileColor: Colors.blue[50],
                    ),
                    ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text(customerName),
                      subtitle: Text('Email: $email'),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text(customerPhone),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text(location),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                elevation: 4,
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Service Info',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      leading: Icon(Icons.build, color: Colors.orange),
                      tileColor: Colors.orange[50],
                    ),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text(serviceName),
                      subtitle: Text(
                          'Category: $serviceCategory - Price: £$servicePrice'),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
              child: Card(
                elevation: 4,
                child: ListTile(
                  title: Text('Booking Details',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Date: $date'),
                      Text('Status: $status',
                          style: TextStyle(
                              color: status == 'completed'
                                  ? Colors.green
                                  : Colors.red)),
                    ],
                  ),
                  leading: Icon(Icons.date_range, color: Colors.black),
                  tileColor: status == 'completed'
                      ? Colors.green[50]
                      : Colors.yellow[50],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () async {
                   await viewModel.changeStatus(bookingId);
                  viewModel.notifyListeners();
                },
                child: Text(status == 'completed'
                    ? 'Mark as Pending'
                    : 'Mark as Completed'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  @override
  ServiceProviderBookingdetailViewModel viewModelBuilder(
          BuildContext context) =>
      ServiceProviderBookingdetailViewModel();
}
