import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';
import 'package:disertation/services/booking_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../models/booking/booking.dart';
import '../../../models/service/service.dart';
import '../../../models/serviceprovider/serviceprovider.dart';

class CustomerBookingsViewModel extends StreamViewModel {
  final _navigationService = locator<NavigationService>();
  final _bookingService = locator<BookingService>();

  String customerId = "Fs1nmDG1f3lx7e8T39r9";

  void navigateToDetails() {
    _navigationService.navigateToCustomerBookingDetailView();
  }

  Future<ServiceProvider> fetchServiceProvider(String id) async {
    var serviceProvider = await _bookingService.getServiceProvider(id);
    print("ViewModel - Service Provider: $serviceProvider");
    return serviceProvider;
  }

  Future<Service> fetchService(String id) async {
    var service = await _bookingService.getService(id);
    print("ViewModel - Service: $service");
    return service;
  }

  @override
  Stream<List<Booking>> get stream =>
      _bookingService.streamBookings(customerId);
}
