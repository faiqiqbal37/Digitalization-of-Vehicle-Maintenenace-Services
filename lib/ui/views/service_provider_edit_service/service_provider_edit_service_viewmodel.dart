import 'package:disertation/ui/views/service_provider_edit_service/service_provider_edit_service_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../models/service/service.dart';
import '../../../services/authentication_service.dart';
import '../../../services/services_service.dart';

class ServiceProviderEditServiceViewModel extends FormViewModel {
  final _authService = locator<AuthenticationService>();
  final _servicesService = locator<ServicesService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  String? serviceType, estimatedTime, vehicleType;

  Future<void> showDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Service Edited',
      description: ' ',
    );
    _navigationService.clearStackAndShow(Routes.serviceProviderServicesView);
  }

  Future<void> editService(String id) async {
    try {
      notifyListeners();
      Service newService = Service(
        id: id,
        price: priceValue.toString(),
        serviceName: serviceNameValue.toString(),
        serviceProviderId: _authService.serviceProvider!.id,
        serviceType: serviceType.toString(),
        vehicleType: vehicleType.toString(),
        description: descriptionValue.toString(),
        eta: etaValue.toString(),
      );
      await _servicesService.editService(id, newService);
      notifyListeners();
      await showDialog();
    } catch (e) {}
  }
}
