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
            child: FutureBuilder<List<Map<String, dynamic>>>(
              future: viewModel.loadCustomerBookings('Fs1nmDG1f3lx7e8T39r9'),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done && snapshot.hasData) {

                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (context, index) {
                      var booking = snapshot.data![index];
                      return BookingCard(
                        serviceProviderName: booking['serviceProviderName'],
                        serviceName: booking['serviceName'],
                        date: booking['date'],
                        status: booking['status'],
                      );
                    },
                  );
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return CircularProgressIndicator();
                }
              },
            ),
          )
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
