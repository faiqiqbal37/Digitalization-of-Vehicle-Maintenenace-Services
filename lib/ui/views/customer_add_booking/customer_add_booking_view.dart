import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'customer_add_booking_viewmodel.dart';

class CustomerAddBookingView extends StackedView<CustomerAddBookingViewModel> {
  final String? description;
  const CustomerAddBookingView({Key? key, required this.description})
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
              onPressed: viewModel.navigateToPaymentScreen,
              child: Text('Proceed to Payment'),
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
