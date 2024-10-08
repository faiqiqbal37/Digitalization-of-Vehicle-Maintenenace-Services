import 'package:disertation/models/serviceprovider/serviceprovider.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';
import '../../../services/services_service.dart';

class CustomerBookingDetailViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _servicesService = locator<ServicesService>();
  double _rating = 0.0;

  double get rating => _rating;

  void setRating(double rating) {
    _rating = rating;
    notifyListeners();
  }

  Future<ServiceProvider?> fetchServiceProviderDetail(String id) async {
    try {
      return await _servicesService.getServiceProviderInfo(id);

      notifyListeners();
    } catch (e) {
      print('Error fetching services: $e');
    }
    return null;
  }
}
