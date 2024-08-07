import 'package:disertation/models/car/car.dart';
import 'package:disertation/services/cars_service_service.dart';
import 'package:disertation/ui/views/customer_add_cars/customer_add_cars_view.form.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';
import '../../../app/app.locator.dart';
import '../../../app/app.router.dart';
import '../../../services/authentication_service.dart';

class CustomerAddCarsViewModel extends FormViewModel {
  final _authService = locator<AuthenticationService>();
  final _carsService = locator<CarsServiceService>();
  final _dialogService = locator<DialogService>();
  final _navigationService = locator<NavigationService>();

  String? serviceType, estimatedTime, vehicleType;

  Future<void> showDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Car Added',
      description: '',
    );
    _navigationService.clearStackAndShow(Routes.customerCarsView);
  }

  Future<void> addCar() async {
    try {
      notifyListeners();
      Car car = Car(id: DateTime.now().millisecondsSinceEpoch.toString(), customerId: _authService.customer!.id, vehicleMake: carMakeValue.toString(), vehicleModel: modelValue.toString(), vehicleType: vehicleTypeValue.toString(), registration: registrationValue.toString());

      await _carsService.addCar(car);
      await showDialog();
    } catch (e) {}
  }
}
