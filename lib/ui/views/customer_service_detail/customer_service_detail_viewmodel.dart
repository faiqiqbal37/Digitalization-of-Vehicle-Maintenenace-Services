import 'package:disertation/models/serviceprovider/serviceprovider.dart';
import 'package:disertation/services/service_provider_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../models/service/service.dart';
import '../../../services/services_service.dart';

class CustomerServiceDetailViewModel extends BaseViewModel {
  final _servicesService = locator<ServicesService>();
  final _navigationService = locator<NavigationService>();
  final _serviceProviderService = locator<ServiceProviderService>();

  Service serviceDetail = Service(
      id: "",
      serviceProviderId: "",
      serviceName: "",
      serviceType: "",
      price: "",
      vehicleType: "");

  void fetchServiceBasedOnId(String id) async {
    notifyListeners();
    serviceDetail = await _servicesService.getServiceById(id);
    notifyListeners();
  }

  Future<Map<String, dynamic>> loadServiceDetail(String id) async {
    Service service = await _servicesService.getServiceById(id);

    // Fetch the service provider details safely
    ServiceProvider? serviceProvider = await _serviceProviderService
        .fetchServiceProviderById(service.serviceProviderId);

    Map<String, dynamic> serviceDetail = {
      'serviceProviderName': serviceProvider?.businessName ?? "N/A",
      'serviceName': service.serviceName,
      'price': service.price,
      'description': service.description ?? "No description available",
      'eta': service.eta ?? "N/A",
      'phone': serviceProvider?.phoneNumber ?? "N/A",
      'email': serviceProvider?.email ?? "N/A",
      'location': serviceProvider?.location ?? "N/A",
      'category': service.serviceType,
      'vehicleType': service.vehicleType,
    };

    return serviceDetail;
  }
}
