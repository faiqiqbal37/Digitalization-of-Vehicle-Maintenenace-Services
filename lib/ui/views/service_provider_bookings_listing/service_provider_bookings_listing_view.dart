import 'package:disertation/ui/views/common_components/service_provider/bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'booking_card.dart';
import 'service_provider_bookings_listing_viewmodel.dart';

class ServiceProviderBookingsListingView
    extends StackedView<ServiceProviderBookingsListingViewModel> {
  const ServiceProviderBookingsListingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ServiceProviderBookingsListingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 60),
          Image.asset(
            'assets/booking.png',
            fit: BoxFit.contain,
            height: 180,
          ),
          Text(
            "Bookings",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(height: 20),
          Expanded(
            child: FutureBuilder<List<Map<String, dynamic>>>(
              future: viewModel.loadCustomerBookings(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData) {
                    if (snapshot.data!.isEmpty) {
                      return Center(
                        child: Text(
                          'No bookings available',
                          style: TextStyle(fontSize: 18),
                        ),
                      );
                    } else {
                      return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          var booking = snapshot.data![index];
                          return BookingCard(
                            customerName: booking['customer'],
                            serviceName: booking['serviceName'],
                            date: booking['date'],
                            status: booking['status'],
                            email: booking['email'],
                            phone: booking['phone'],
                            price: booking['price'],
                            category: booking['category'],
                            location: booking['location'],
                            updateStatus: () =>
                                viewModel.changeStatus(booking['id']),
                            bookingId: booking['id'],
                          );
                        },
                      );
                    }
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text(
                        'Error: ${snapshot.error}',
                        style: TextStyle(fontSize: 18, color: Colors.red),
                      ),
                    );
                  }
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }

  @override
  ServiceProviderBookingsListingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServiceProviderBookingsListingViewModel();
}
