import 'package:disertation/models/serviceprovider/serviceprovider.dart';
import 'package:disertation/services/authentication_service.dart';
import 'package:disertation/services/service_provider_service.dart';
import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';

class ServiceProviderHomeScreenViewModel extends BaseViewModel {
  final _serviceProviderService = locator<ServiceProviderService>();
  final _authService = locator<AuthenticationService>();
  String serviceProviderName = "";


  Future<void> getServiceProviderName() async {
    ServiceProvider serviceProvider = await _serviceProviderService.fetchServiceProviderById(_authService.serviceProvider!.id);
    notifyListeners();
    serviceProviderName = serviceProvider.businessName;

  }

}
