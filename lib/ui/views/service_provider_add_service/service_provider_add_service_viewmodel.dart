import 'package:disertation/app/app.locator.dart';
import 'package:disertation/models/service/service.dart';
import 'package:disertation/services/authentication_service.dart';
import 'package:disertation/services/services_service.dart';
import 'package:disertation/ui/views/service_provider_add_service/service_provider_add_service_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.router.dart';

class ServiceProviderAddServiceViewModel extends FormViewModel {
  final _authService = locator<AuthenticationService>();
  final _servicesService = locator<ServicesService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  String? serviceType, estimatedTime, vehicleType;

  Future<void> showDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Service Added',
      description: 'Service Added Successfully',
    );
    _navigationService.clearStackAndShow(Routes.serviceProviderServicesView);
  }

  Future<void> addService() async {
    try {
      notifyListeners();
      Service newService = Service(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        price: priceValue.toString(),
        serviceName: serviceNameValue.toString(),
        serviceProviderId: _authService.serviceProvider!.id,
        serviceType: serviceType.toString(),
        vehicleType: vehicleType.toString(),
        description: descriptionValue.toString(),
        eta: etaValue.toString(),
      );
      await _servicesService.addService(newService);
      await showDialog();
    } catch (e) {}
  }
}
