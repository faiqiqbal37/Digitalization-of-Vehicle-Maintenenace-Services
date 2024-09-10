import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../services/authentication_service.dart';
import '../../../services/booking_service.dart';
import '../../../services/customer_service.dart';
import '../../../services/services_service.dart';

class ServiceProviderBookingdetailViewModel extends BaseViewModel {
  final _bookingService = locator<BookingService>();

  final _servicesService = locator<ServicesService>();

  Future<void> changeStatus(String bookingId) async {
    await _bookingService.toggleBookingStatus(bookingId);
    notifyListeners();
  }
}
