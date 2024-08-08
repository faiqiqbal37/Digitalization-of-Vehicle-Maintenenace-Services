import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';
import 'package:disertation/models/booking/booking.dart';
import 'package:disertation/models/car/car.dart'; // Assuming you have this model
import 'package:disertation/models/payment/payment.dart';
import 'package:disertation/services/booking_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';

class CustomerAddBookingViewModel extends BaseViewModel {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();
  String? _selectedCarId;

  DateTime get selectedDate => _selectedDate;
  TimeOfDay get selectedTime => _selectedTime;
  String? get selectedCarId => _selectedCarId;

  final _navigationService = locator<NavigationService>();
  final _bookingService = locator<BookingService>();
  final _dialogService = locator<DialogService>();

  List<Car> _cars = [];
  List<Car> get cars => _cars;

  Future<void> showDialog() async {
    await _dialogService.showCustomDialog(
      variant: DialogType.infoAlert,
      title: 'Booked Service Successfully',
      description: '',
    );
    _navigationService.clearStackAndShow(Routes.customerServicesView);
  }

  void navigateToPaymentScreen() {
    _navigationService.navigateToCustomerPaymentView();
  }

  Future<void> pickDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2101),
    );

    if (pickedDate != null && pickedDate != _selectedDate) {
      _selectedDate = pickedDate;
      notifyListeners();
    }
  }

  Future<void> pickTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );

    if (pickedTime != null && pickedTime != _selectedTime) {
      _selectedTime = pickedTime;
      notifyListeners();
    }
  }

  Future<void> fetchCars(String customerId) async {
    final carCollection = FirebaseFirestore.instance.collection('cars');
    final querySnapshot =
        await carCollection.where('customerId', isEqualTo: customerId).get();
    _cars = querySnapshot.docs.map((doc) => Car.fromJson(doc.data())).toList();
    notifyListeners();
  }

  void selectCar(String? carId) {
    _selectedCarId = carId;
    notifyListeners();
  }

  Future<void> addBooking(Booking booking, Payment payment) async {
    try {
      await _bookingService.addPayment(payment);
      await _bookingService.addBooking(booking);
      await showDialog();

      notifyListeners();
    } catch (e) {
      // Handle error
    }
  }
}
