import 'package:disertation/app/app.router.dart';
import 'package:disertation/services/service_provider_service.dart';
import 'package:disertation/ui/views/service_provider_edit_profile/service_provider_edit_profile_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../services/authentication_service.dart';

class ServiceProviderEditProfileViewModel extends FormViewModel {
  final _authService = locator<AuthenticationService>();
  final _serviceProviderService = locator<ServiceProviderService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  void initializeForm() {
    // Initialize the form with existing service provider values
    if (_authService.serviceProvider != null) {
      firstnameValue= _authService.serviceProvider!.firstname;
      lastnameValue = _authService.serviceProvider!.lastname;
      companyNameValue = _authService.serviceProvider!.businessName;
      phoneValue = _authService.serviceProvider!.phoneNumber;
      emailValue = _authService.serviceProvider!.email;
      locationValue = _authService.serviceProvider!.location ?? '';
    }
  }

  Future<void> showDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Profile Edited',
      description: 'Your profile has been successfully updated.',
    );
    _navigationService.replaceWithServiceProviderProfileView();
  }

  void editServiceProvider() async {
    final serviceProvider = _authService.serviceProvider;
    if (serviceProvider == null) return;

    // Use the existing service provider values if the form fields are empty
    final updatedFirstName = firstnameValue?.isNotEmpty == true
        ? firstnameValue!
        : serviceProvider.firstname;
    final updatedLastName = lastnameValue?.isNotEmpty == true
        ? lastnameValue!
        : serviceProvider.lastname;
    final updatedCompanyName = companyNameValue?.isNotEmpty == true
        ? companyNameValue!
        : serviceProvider.businessName;
    final updatedPhone = phoneValue?.isNotEmpty == true
        ? phoneValue!
        : serviceProvider.phoneNumber;
    final updatedEmail = emailValue?.isNotEmpty == true
        ? emailValue!
        : serviceProvider.email;
    final updatedLocation = locationValue?.isNotEmpty == true
        ? locationValue!
        : serviceProvider.location;

    // Update the service provider with the new or existing values
    await _serviceProviderService.updateServiceProvider(
      serviceProvider.id,
      updatedFirstName,
      updatedPhone,
      updatedLastName,
      updatedCompanyName,
      updatedEmail,
      updatedLocation,
    );

    notifyListeners();
    await showDialog();
  }
}
