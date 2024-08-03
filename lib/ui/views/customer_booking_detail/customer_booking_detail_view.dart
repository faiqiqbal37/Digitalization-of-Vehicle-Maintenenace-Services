import 'package:disertation/ui/views/common_components/customer/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'customer_booking_detail_viewmodel.dart';

class CustomerBookingDetailView
    extends StackedView<CustomerBookingDetailViewModel> {
  const CustomerBookingDetailView({Key? key}) : super(key: key);

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
                      title: Text('AC Service'),
                    ),
                    ListTile(
                      leading: Icon(Icons.garage),
                      title: Text('Edward Repairs'),
                    ),
                    ListTile(
                      leading: Icon(Icons.monetization_on),
                      title: Text('100'),
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
                    Text('Booking Details:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16)),
                    ListTile(
                      leading: Icon(Icons.date_range),
                      title: Text('Date: 20/02/2024'),
                    ),
                    ListTile(
                      leading: Icon(Icons.check),
                      title: Text('Completed'),
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
