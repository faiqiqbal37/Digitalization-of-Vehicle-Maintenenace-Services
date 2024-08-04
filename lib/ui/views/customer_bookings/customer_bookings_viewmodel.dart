import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';
import 'package:disertation/services/authentication_service.dart';
import 'package:disertation/services/booking_service.dart';
import 'package:disertation/services/services_service.dart';
import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../models/booking/booking.dart';
import '../../../models/customer/customer.dart';
import '../../../models/service/service.dart';
import '../../../models/serviceprovider/serviceprovider.dart';

class CustomerBookingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _bookingService = locator<BookingService>();
  final authenticationService = locator<AuthenticationService>();
  final _servicesService = locator<ServicesService>();

  String customerId(){
    return authenticationService.customer!.id;
  }


  Future<List<Map<String, dynamic>>> loadCustomerBookings(String customerId) async {
    List<Booking> bookings = await _bookingService.fetchBookingsByCustomerId(customerId);
    List<Map<String, dynamic>> bookingDetailsList = [];

    for (var booking in bookings) {
      Customer? customer = await authenticationService.fetchCustomerByUid(booking.customerId);
      Service service = await _servicesService.getServiceById(booking.serviceId);
      ServiceProvider? serviceProvider = await authenticationService.fetchServiceProviderByUid(booking.serviceProviderId);

      String formattedDate = DateFormat('MM/dd/yyyy').format(booking.date);


      bookingDetailsList.add({
        'serviceProviderName': serviceProvider?.businessName,
        'serviceName': service.serviceName,
        'date': formattedDate,  // Format the date as needed
        'customer': customer!.firstname + ' ' + customer.lastname,
        'status': booking.status
      });

    }
    return bookingDetailsList;
  }

  void navigateToDetails() {
    _navigationService.navigateToCustomerBookingDetailView();
  }


}
