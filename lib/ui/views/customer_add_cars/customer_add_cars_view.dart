import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'customer_add_cars_viewmodel.dart';

class CustomerAddCarsView extends StackedView<CustomerAddCarsViewModel> {
  const CustomerAddCarsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerAddCarsViewModel viewModel,
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
  CustomerAddCarsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomerAddCarsViewModel();
}
