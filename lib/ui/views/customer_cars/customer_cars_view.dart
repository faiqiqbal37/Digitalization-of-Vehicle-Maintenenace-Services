import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'customer_cars_viewmodel.dart';

class CustomerCarsView extends StackedView<CustomerCarsViewModel> {
  const CustomerCarsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerCarsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Container(
        padding: const EdgeInsets.only(left: 25.0, right: 25.0),
      ),
    );
  }

  @override
  CustomerCarsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomerCarsViewModel();
}
