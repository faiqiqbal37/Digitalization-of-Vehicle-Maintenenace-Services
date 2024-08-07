import 'package:disertation/app/app.locator.dart';
import 'package:disertation/app/app.router.dart';
import 'package:disertation/models/booking/booking.dart';
import 'package:disertation/models/payment/payment.dart';
import 'package:disertation/services/booking_service.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.dialogs.dart';

class CustomerAddBookingViewModel extends BaseViewModel {
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  DateTime get selectedDate => _selectedDate;
  TimeOfDay get selectedTime => _selectedTime;
  final _navigationService = locator<NavigationService>();
  final _bookingService = locator<BookingService>();
  final _dialogService = locator<DialogService>();

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

  Future<void> addBooking(Booking booking, Payment payment) async {
    try {
      await _bookingService.addPayment(payment);
      await _bookingService.addBooking(booking);
      await showDialog();

      notifyListeners();
    } catch (e) {}
  }
}
