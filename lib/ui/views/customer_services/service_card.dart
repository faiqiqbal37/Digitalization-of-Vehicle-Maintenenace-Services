import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class CustomerServiceCard extends StatelessWidget {
  final String serviceProviderName;
  final String serviceName;
  final String price;
  final String vehicleType;
  final String? eta;
  final String? description;
  final _navigationService = locator<NavigationService>();

  CustomerServiceCard(
      {required this.serviceProviderName,
      required this.serviceName,
      required this.price,
      required this.eta,
      required this.vehicleType,
      required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Service Name: $serviceProviderName',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text('Service Provider Name: $serviceName'),
                SizedBox(height: 8),
                Text('Vehicle Type: $vehicleType'),
                SizedBox(height: 8),
                Text('Price: $price'),
                SizedBox(height: 8),
                Text('ETA: $eta'),
                SizedBox(height: 8),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    },
                  child: Text('View Details'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _navigationService.navigateToCustomerAddBookingView(
                        description: description);
                  },
                  child: Text('Book'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
