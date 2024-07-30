import 'package:disertation/ui/views/common_components/customer/navigation_bar.dart';
import 'package:disertation/ui/views/customer_bookings/booking_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'customer_bookings_viewmodel.dart';

class CustomerBookingsView extends StackedView<CustomerBookingsViewModel> {
  const CustomerBookingsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerBookingsViewModel viewModel,
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
            child: ListView(
              children: [
                BookingCard(
                  serviceProviderName: 'Ahmad Autos',
                  serviceName: 'AC Servicing',
                  date: '10/10/2024',
                  status: 'Completed',
                ),
                BookingCard(
                  serviceProviderName: 'Ahmad Autos',
                  serviceName: 'AC Servicing',
                  date: '10/10/2024',
                  status: 'Completed',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomerBottomNavigationBar(),
    );
  }

  @override
  CustomerBookingsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomerBookingsViewModel();
}
