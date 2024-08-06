import 'package:disertation/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../models/service/service.dart';
import '../../../services/services_service.dart';

class ServiceProviderServiceDetailViewModel extends BaseViewModel {
  final _servicesService = locator<ServicesService>();
  final _navigationService = locator<NavigationService>();


  Service serviceDetail = Service(id: "id", serviceProviderId: "serviceProviderId", serviceName: "serviceName", serviceType: "serviceType", price: "price", vehicleType: "vehicleType");

  void fetchServiceBasedOnId(String id) async {
    serviceDetail = await _servicesService.getServiceById(id);
    notifyListeners();
  }

  Future<void> deleteServiceById(String serviceId) async{
      await _servicesService.deleteServiceById(serviceId);
      _navigationService.replaceWithServiceProviderServicesView();
      notifyListeners();

  }



}
