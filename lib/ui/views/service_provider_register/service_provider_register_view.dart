import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'service_provider_register_viewmodel.dart';

class ServiceProviderRegisterView
    extends StackedView<ServiceProviderRegisterViewModel> {
  const ServiceProviderRegisterView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ServiceProviderRegisterViewModel viewModel,
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
  ServiceProviderRegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServiceProviderRegisterViewModel();
}
