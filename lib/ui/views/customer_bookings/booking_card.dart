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
  final _navigationService = locator<NavigationService>();

  BookingCard({
    required this.serviceProviderName,
    required this.serviceName,
    required this.date,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Service Provider Name: $serviceProviderName',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text('Service Name: $serviceName'),
                SizedBox(height: 8),
                Text('Date: $date'),
                SizedBox(height: 8),
                Text('Status: $status',
                    style: TextStyle(
                        color: status == 'Completed' ? Colors.green : Colors.red)),
                SizedBox(height: 8),

              ],

            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _navigationService
                        .navigateToServiceProviderBookingdetailView();
                  },
                  child: Text('View'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
