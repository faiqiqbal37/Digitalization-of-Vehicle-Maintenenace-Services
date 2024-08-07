import 'package:disertation/models/payment/payment.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../../../models/booking/booking.dart';
import 'customer_add_booking_viewmodel.dart';

class CustomerAddBookingView extends StackedView<CustomerAddBookingViewModel> {
  final String? description;
  final String serviceName;
  final String serviceId;
  final String customerId;
  final String serviceProviderId;
  final String price;
  const CustomerAddBookingView(
      {Key? key,
      required this.description,
      required this.serviceName,
      required this.serviceProviderId,
      required this.serviceId,
      required this.customerId,
      required this.price})
      : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerAddBookingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Service'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Service Name'),
            SizedBox(height: 8.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                '${serviceName}',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Text('Service Description'),
            SizedBox(height: 8.0),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                '${description}',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            SizedBox(height: 16.0),
            Text('Select Date'),
            SizedBox(height: 8.0),
            GestureDetector(
              onTap: () => viewModel.pickDate(context),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text(
                  "${viewModel.selectedDate}",
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Text('Select Time'),
            SizedBox(height: 8.0),
            GestureDetector(
              onTap: () => viewModel.pickTime(context),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Text(
                  viewModel.selectedTime.format(context),
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                String bookingId =  DateTime.now().millisecondsSinceEpoch.toString();
                String paymentId =  DateTime.now().millisecondsSinceEpoch.toString();
                String dateTime = viewModel.selectedDate.toIso8601String();
                DateTime updatedTime = DateTime.parse(dateTime);
                Booking booking = Booking(
                    id: bookingId,
                    serviceProviderId: serviceProviderId,
                    customerId: customerId,
                    serviceId: serviceId,
                    date: DateTime.now());
                Payment payment = Payment(
                    id: paymentId,
                    serviceProviderId: serviceProviderId,
                    customerId: customerId,
                    bookingId: bookingId,
                    amount: int.parse(price) ,
                    date: DateTime.now());
                viewModel.addBooking(booking, payment);
              },
              child: Text('Book'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  CustomerAddBookingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomerAddBookingViewModel();
}
