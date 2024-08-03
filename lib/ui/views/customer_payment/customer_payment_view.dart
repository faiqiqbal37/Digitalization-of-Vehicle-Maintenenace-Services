import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'customer_payment_viewmodel.dart';

class CustomerPaymentView extends StackedView<CustomerPaymentViewModel> {
  const CustomerPaymentView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerPaymentViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Center(
        child: Text('Payment Screen'),
      ),
    );
  }

  @override
  CustomerPaymentViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomerPaymentViewModel();
}
