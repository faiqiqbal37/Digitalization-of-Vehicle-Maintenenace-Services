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
          Image.asset(
            'assets/booking.png',
            fit: BoxFit.contain,
            height: 200,
          ),          Text("Bookings",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          SizedBox(height: 20),
          Expanded(
            child: FutureBuilder<List<Map<String, dynamic>>>(
              future: viewModel.loadCustomerBookings(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        var booking = snapshot.data![index];
                        return BookingCard(
                          serviceProviderName: booking['serviceProviderName'],
                          serviceName: booking['serviceName'],
                          date: booking['date'],
                          status: booking['status'],
                          email: booking['email'],
                          phone: booking['phone'],
                          price: booking['price'],
                        );
                      },
                    );
                  } else if (snapshot.hasData && snapshot.data!.isEmpty) {
                    return Center(
                      child: Text('No bookings made yet.'),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  }
                }
                return Center(child: CircularProgressIndicator());
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
