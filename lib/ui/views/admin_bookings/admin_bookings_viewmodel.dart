import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../models/booking/booking.dart';
import '../../../models/customer/customer.dart';
import '../../../models/service/service.dart';
import '../../../models/serviceprovider/serviceprovider.dart';
import '../../../services/authentication_service.dart';
import '../../../services/booking_service.dart';
import '../../../services/services_service.dart';

class AdminBookingsViewModel extends BaseViewModel {
  final _bookingService = locator<BookingService>();
  final _authenticationService = locator<AuthenticationService>();
  final _servicesService = locator<ServicesService>();



  Future<List<Map<String, dynamic>>> loadAllCustomerBookings() async {
    List<Booking> bookings = await _bookingService.fetchAllBookings();
    List<Map<String, dynamic>> bookingDetailsList = [];

    for (var booking in bookings) {
      // Fetch customer details
      Customer? customer =
      await _authenticationService.fetchCustomerByUid(booking.customerId);
      // Fetch service details
      Service service =
      await _servicesService.getServiceById(booking.serviceId);
      // Fetch service provider details
      ServiceProvider? serviceProvider = await _authenticationService
          .fetchServiceProviderByUid(booking.serviceProviderId);

      // Format the date
      String formattedDate = DateFormat('MM/dd/yyyy').format(booking.date);

      // Compile all necessary details into a map
      bookingDetailsList.add({
        'serviceProviderName': serviceProvider?.businessName,
        'serviceName': service.serviceName,
        'date': formattedDate,
        'customerName': customer!.firstname + ' ' + customer.lastname,  // Handle potential nulls
        'status': booking.status,
        'price': service.price.toString(),
        'phone': serviceProvider?.phoneNumber,
        'email': serviceProvider?.email,
        'location': serviceProvider?.location,
      });
    }
    return bookingDetailsList;
  }


}
