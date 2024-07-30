import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';
import 'package:disertation/models/service/service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../services/authentication_service.dart';
import '../../../services/services_service.dart';

class ServiceProviderServicesViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final _servicesService = locator<ServicesService>();
  final _dialogService = locator<DialogService>();

  late List<Service> servicesNew;

  // final List<Map<String, dynamic>> services = [
  //   {
  //     'name': 'AC Servicing',
  //     'type': 'Electrical',
  //     'price': '\$250',
  //   },
  //   {
  //     'name': 'Engine Overhaul',
  //     'type': 'Mechanical',
  //     'price': '\$950',
  //   },
  // ];

  void fetchServices() async {
    String providerId = 'SP001'; // Example provider ID
    try {
      servicesNew = await _servicesService
          .getServicesByProviderId(_authService.serviceProvider!.id);
      for (Service service in servicesNew) {
        print('Service Name: ${service.serviceName}, Price: ${service.price}');
      }
    } catch (e) {
      print('Error fetching services: $e');
    }
  }

  void navigateToAddService() {
    _navigationService.navigateToServiceProviderAddServiceView();
  }
}
