import 'package:stacked/stacked.dart';

import '../../../app/app.locator.dart';
import '../../../models/service/service.dart';
import '../../../services/services_service.dart';

class ServiceProviderServiceDetailViewModel extends BaseViewModel {
  final _servicesService = locator<ServicesService>();
  Service serviceDetail = Service(id: "id", serviceProviderId: "serviceProviderId", serviceName: "serviceName", serviceType: "serviceType", price: "price", vehicleType: "vehicleType");

  void fetchServiceBasedOnId(String id) async {
    serviceDetail = await _servicesService.getServiceById(id);
    notifyListeners();
  }



}
