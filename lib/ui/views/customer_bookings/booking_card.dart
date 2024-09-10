import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class BookingCard extends StatelessWidget {
  final String serviceProviderName;
  final String serviceName;
  final String date;
  final String status;
  final String price;
  final String phone;
  final String email;
  final String location;

  final _navigationService = locator<NavigationService>();

  BookingCard(
      {required this.serviceProviderName,
      required this.serviceName,
      required this.date,
      required this.status,
      required this.price,
      required this.email,
      required this.phone,
      required this.location});

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
              onPressed: () {
                _navigationService.navigateToCustomerBookingDetailView(
                    serviceName: serviceName,
                    price: price,
                    date: date,
                    email: email,
                    phone: phone,
                    serviceProviderName: serviceProviderName,
                    status: status,
                    location: location);
              },
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
