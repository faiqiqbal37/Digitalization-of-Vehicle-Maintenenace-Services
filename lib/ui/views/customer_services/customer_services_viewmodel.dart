import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../models/service/service.dart';
import '../../../services/authentication_service.dart';
import '../../../services/services_service.dart';

class CustomerServicesViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final _servicesService = locator<ServicesService>();
  final _dialogService = locator<DialogService>();

  late List<Service> servicesNew = [];

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
}
