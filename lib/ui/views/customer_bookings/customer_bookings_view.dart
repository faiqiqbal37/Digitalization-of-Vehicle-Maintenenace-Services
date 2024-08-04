import 'package:disertation/ui/views/common_components/customer/navigation_bar.dart';
import 'package:disertation/ui/views/customer_bookings/booking_card.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../models/service/service.dart';
import '../../../models/serviceprovider/serviceprovider.dart';
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
            child: viewModel.isBusy
                ? CircularProgressIndicator()
                : ListView.builder(
                    itemCount: viewModel.data?.length ?? 0,
                    itemBuilder: (context, index) {
                      final booking = viewModel.data![index];
                      print(
                          "Building item for booking: ${booking.id}"); // Make sure booking has an id or similar identifie
                      print(" The data is: " + viewModel.data);
                      return FutureBuilder<ServiceProvider>(
                        future: viewModel.fetchServiceProvider(
                            "W2YxfROj0fYoCRTEE4XAtVNTjIx1"),
                        builder: (context, snapshotProvider) {
                          if (!snapshotProvider.hasData)
                            return CircularProgressIndicator();
                          final serviceProvider = snapshotProvider.data!;
                          return FutureBuilder<Service>(
                            future: viewModel.fetchService("1722296066886"),
                            builder: (context, snapshotService) {
                              if (!snapshotService.hasData)
                                return CircularProgressIndicator();
                              final service = snapshotService.data!;
                              return BookingCard(
                                serviceProviderName:
                                    serviceProvider.businessName,
                                serviceName: service.serviceName,
                                date: booking.date.toString(),
                                status: booking.status,
                              );
                            },
                          );
                        },
                      );
                    },
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
