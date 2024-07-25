import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'customer_register_viewmodel.dart';

class CustomerRegisterView extends StackedView<CustomerRegisterViewModel> {
  const CustomerRegisterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerRegisterViewModel viewModel,
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
  CustomerRegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomerRegisterViewModel();
}
