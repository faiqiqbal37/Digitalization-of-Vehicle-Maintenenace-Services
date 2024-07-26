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
          Icon(Icons.calendar_month, size: 80, color: Colors.black),
          Text("Bookings",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          SizedBox(height: 20),
          Expanded(
            child: ListView(
              children: [
                BookingCard(
                  customerName: 'Daniel Brown',
                  serviceName: 'AC Servicing',
                  date: '10/10/2024',
                  location: '80 HOYLE ST, 83 7LG',
                  status: 'Completed',
                ),
                BookingCard(
                  customerName: 'Daniel Brown',
                  serviceName: 'AC Servicing',
                  date: '10/10/2024',
                  location: '80 HOYLE ST, 83 7LG',
                  status: 'Pending',
                ),
              ],
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
