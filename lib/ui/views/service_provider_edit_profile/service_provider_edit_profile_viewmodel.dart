import 'package:disertation/app/app.router.dart';
import 'package:disertation/services/service_provider_service.dart';
import 'package:disertation/ui/views/service_provider_edit_profile/service_provider_edit_profile_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../services/authentication_service.dart';
import '../../../services/customer_service.dart';
import 'package:disertation/ui/views/service_provider_edit_profile/service_provider_edit_profile_view.form.dart';

class ServiceProviderEditProfileViewModel extends FormViewModel {
  final _authService = locator<AuthenticationService>();
  final _serviceProviderService = locator<ServiceProviderService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  Future<void> showDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Profile Edited',
      description: ' ',
    );
    _navigationService.replaceWithServiceProviderProfileView();
  }

  void editServiceProvider() async {
    _serviceProviderService.updateServiceProvider(
        _authService.serviceProvider!.id,
        firstnameValue!,
        phoneValue!,
        lastnameValue!,
        companyNameValue!,
        emailValue!,
        locationValue!);

    notifyListeners();
    await showDialog();
  }
}
