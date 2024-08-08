import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';
import 'package:disertation/models/car/car.dart';
import 'package:disertation/services/cars_service_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../services/authentication_service.dart';

class CustomerCarsViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _carsService = locator<CarsServiceService>();
  final _authenticationService = locator<AuthenticationService>();

  Future<List<Map<String, dynamic>>> loadCustomerCars() async {
    List<Car> cars = await _carsService
        .fetchCarsByCustomerId(_authenticationService.customer!.id);
    List<Map<String, dynamic>> carsList = [];

    for (var car in cars) {
      carsList.add({
        'carMake': car.vehicleMake,
        'carModel': car.vehicleMake,
        'modelYear': car.vehicleModel, // Format the date as needed
        'registration': car.registration,
        'vehicleType': car.vehicleType,
        'carId': car.id
      });
    }
    return carsList;
  }

  Future<void> deleteCar(carId) async {
    _carsService.deleteServiceById(carId);
    notifyListeners();
  }

  void navigateToAddCar() {
    _navigationService.navigateToCustomerAddCarsView();
  }
}
