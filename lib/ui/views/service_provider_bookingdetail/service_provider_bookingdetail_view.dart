import 'package:disertation/ui/views/common_components/service_provider/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'service_provider_bookingdetail_viewmodel.dart';

class ServiceProviderBookingdetailView
    extends StackedView<ServiceProviderBookingdetailViewModel> {
  const ServiceProviderBookingdetailView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ServiceProviderBookingdetailViewModel viewModel,
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
                    Text('Customer Info:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    ListTile(
                      leading: Icon(Icons.person),
                      title: Text('Michael Jordan'),
                    ),
                    ListTile(
                      leading: Icon(Icons.phone),
                      title: Text('+44078645125'),
                    ),
                    ListTile(
                      leading: Icon(Icons.email),
                      title: Text('michael@jordan.com'),
                    ),
                    ListTile(
                      leading: Icon(Icons.location_on),
                      title: Text('23 James St, S4 7TL'),
                    ),
                    SizedBox(height: 20),
                    Text('Service Info:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    ListTile(
                      leading: Icon(Icons.build),
                      title: Text('AC Servicing'),
                      subtitle: Text('Price: \$250'),
                    ),
                    SizedBox(height: 20),
                    Text('Booking Details:', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    ListTile(
                      leading: Icon(Icons.date_range),
                      title: Text('Date: 20/02/2024'),
                      subtitle: Text('Status: Completed'),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {}, // Add logic to change status here
                        child: Text('Mark as Pending'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white, backgroundColor: Colors.red, // Text color
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  @override
  ServiceProviderBookingdetailViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServiceProviderBookingdetailViewModel();
}
