import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class ServiceProviderServicesViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final List<Map<String, dynamic>> services = [
    {
      'name': 'AC Servicing',
      'type': 'Electrical',
      'price': '\$250',
    },
    {
      'name': 'Engine Overhaul',
      'type': 'Mechanical',
      'price': '\$950',
    },
  ];

  void navigateToAddService(){
    _navigationService.navigateToServiceProviderAddServiceView();
  }
}
