import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';
import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

class CustomerServiceCard extends StatelessWidget {
  final String serviceProviderName;
  final String serviceProviderId;
  final String serviceId;
  final String customerId;
  final String serviceName;
  final String price;
  final String vehicleType;
  final String? eta;
  final String? description;
  final VoidCallback onButtonPressed; // The function to execute

  final _navigationService = locator<NavigationService>();

  CustomerServiceCard(
      {required this.serviceProviderName,
      required this.serviceName,
      required this.price,
      required this.eta,
      required this.vehicleType,
      required this.description,
      required this.serviceProviderId,
      required this.serviceId,
      required this.customerId,
      required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
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
                TextButton(
                  onPressed: () {
                    _navigationService.navigateToCustomerServiceDetailView(
                        serviceId: serviceId);
                  },
                  child: Text('Details'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    shadowColor: Colors.blueAccent,
                    elevation: 5,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _navigationService.navigateToCustomerAddBookingView(
                        price: price,
                        description: description,
                        serviceName: serviceName,
                        serviceId: serviceId,
                        serviceProviderId: serviceProviderId,
                        customerId: customerId);
                  },
                  child: Text('Book'),
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    shadowColor: Colors.blueAccent,
                    elevation: 5,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
