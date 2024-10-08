import 'package:disertation/app/app.locator.dart';
import 'package:disertation/models/serviceprovider/serviceprovider.dart';
import 'package:disertation/services/authentication_service.dart';
import 'package:disertation/services/service_provider_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.router.dart';

class ServiceProviderProfileViewModel extends BaseViewModel {
  final _authService = locator<AuthenticationService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();
  final _serviceProviderService = locator<ServiceProviderService>();
  ServiceProvider serviceProvider = ServiceProvider(
      id: "",
      firstname: "",
      lastname: "",
      businessName: "",
      phoneNumber: "",
      email: "",
      password: "");

  Future<ServiceProvider> returnServiceProvider() async {
    serviceProvider = await _serviceProviderService
        .fetchServiceProviderById(_authService.serviceProvider!.id);
    notifyListeners();
    return serviceProvider;
  }

  Future<void> showRegistrationDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Signed Out',
      description: 'Signed Out Successfully',
    );
    _navigationService.clearStackAndShow(Routes.initialSelectionScreenView);
  }

  void navigateToEditScreen() {
    _navigationService.navigateToServiceProviderEditProfileView();
  }

  void logout() {
    _authService.signOut();
    showRegistrationDialog();
  }
}
