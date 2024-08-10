import 'package:intl/intl.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../models/booking/booking.dart';
import '../../../models/customer/customer.dart';
import '../../../models/service/service.dart';
import '../../../models/serviceprovider/serviceprovider.dart';
import '../../../services/authentication_service.dart';
import '../../../services/booking_service.dart';
import '../../../services/customer_service.dart';
import '../../../services/service_provider_service.dart';
import '../../../services/services_service.dart';

class CustomerHomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _bookingService = locator<BookingService>();
  final _authenticationService = locator<AuthenticationService>();
  final _customerService = locator<CustomerService>();
  final _servicesService = locator<ServicesService>();
  final _serviceProviderService = locator<ServiceProviderService>();

  String customerName = "";

  late List<Service> servicesNew = [];
  ServiceProvider serviceProvider = ServiceProvider(
      id: "",
      firstname: "",
      lastname: "",
      businessName: "",
      phoneNumber: "",
      email: "",
      password: "");
  Customer customer = Customer(
      id: "",
      firstname: "",
      lastname: "",
      phoneNumber: "",
      email: "",
      password: "");

  Future<void> fetchServiceProvider(String id) async {
    serviceProvider =
        await _serviceProviderService.fetchServiceProviderById(id);
    notifyListeners();
  }

  Future<void> fetchCustomer() async {
    customer = _authenticationService.customer!;
    notifyListeners();
  }

  Future<void> fetchServices() async {
    try {
      servicesNew = await _servicesService.getAllServices();
      for (Service service in servicesNew) {
        print('Service Name: ${service.serviceName}, Price: ${service.price}');
      }
      notifyListeners();
    } catch (e) {
      print('Error fetching services: $e');
    }
  }

  Future<void> fetchServicesBasedOnCategory(String category) async {
    try {
      servicesNew = await _servicesService.getServicesByType(category);
      for (Service service in servicesNew) {
        print('Service Name: ${service.serviceName}, Price: ${service.price}');
      }
      notifyListeners();
    } catch (e) {
      print('Error fetching services: $e');
    }
  }

  Future<void> getCustomerName() async {
    Customer customer = await _customerService
        .fetchCustomerById(_authenticationService.customer!.id);
    customerName = customer.firstname;
    notifyListeners();
  }

  Future<List<Map<String, dynamic>>> loadCustomerBookings() async {
    List<Booking> bookings = await _bookingService
        .fetchBookingsByCustomerId(_authenticationService.customer!.id);
    List<Map<String, dynamic>> bookingDetailsList = [];

    for (var booking in bookings) {
      Customer? customer =
          await _authenticationService.fetchCustomerByUid(booking.customerId);
      Service service =
          await _servicesService.getServiceById(booking.serviceId);
      ServiceProvider? serviceProvider = await _authenticationService
          .fetchServiceProviderByUid(booking.serviceProviderId);

      String formattedDate = DateFormat('MM/dd/yyyy').format(booking.date);

      bookingDetailsList.add({
        'serviceProviderName': serviceProvider?.businessName,
        'serviceName': service.serviceName,
        'date': formattedDate, // Format the date as needed
        'customer': customer!.firstname + ' ' + customer.lastname,
        'status': booking.status,
        'price': service.price,
        'phone': serviceProvider?.phoneNumber,
        'email': serviceProvider?.email,
        'location': serviceProvider?.location,
      });
    }
    return bookingDetailsList;
  }
}
