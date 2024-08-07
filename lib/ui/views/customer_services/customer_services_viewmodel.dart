import 'package:disertation/models/customer/customer.dart';
import 'package:disertation/models/serviceprovider/serviceprovider.dart';
import 'package:disertation/services/customer_service.dart';
import 'package:disertation/services/service_provider_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../models/service/service.dart';
import '../../../models/serviceprovider/serviceprovider.dart';
import '../../../services/authentication_service.dart';
import '../../../services/services_service.dart';

class CustomerServicesViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final _servicesService = locator<ServicesService>();
  final _dialogService = locator<DialogService>();
  final _customerService = locator<CustomerService>();
  final _serviceProviderService = locator<ServiceProviderService>();

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
    customer = _authService.customer!;
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

  void navigateToServiceDetail(String serviceId) {}
}
