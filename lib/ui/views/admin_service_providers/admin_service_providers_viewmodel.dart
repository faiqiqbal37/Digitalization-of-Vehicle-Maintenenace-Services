import 'package:disertation/app/app.locator.dart';
import 'package:disertation/models/serviceprovider/serviceprovider.dart';
import 'package:disertation/services/service_provider_service.dart';
import 'package:stacked/stacked.dart';

class AdminServiceProvidersViewModel extends BaseViewModel {
  final _serviceProvidersService = locator<ServiceProviderService>();
  late List<ServiceProvider> serviceProviders = [];

  Future<void> fetchServiceProviders() async {
    try {
      serviceProviders = await _serviceProvidersService.fetchAll();
      notifyListeners();
    } catch (e) {
      print('Error fetching services: $e');
    }
  }
}
