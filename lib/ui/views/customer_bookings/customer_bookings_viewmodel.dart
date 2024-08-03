import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class CustomerBookingsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void navigateToDetails() {
    _navigationService.navigateToCustomerBookingDetailView();
  }
}
