import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'service_provider_home_screen_viewmodel.dart';

class ServiceProviderHomeScreenView
    extends StackedView<ServiceProviderHomeScreenViewModel> {
  const ServiceProviderHomeScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ServiceProviderHomeScreenViewModel viewModel,
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
  ServiceProviderHomeScreenViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServiceProviderHomeScreenViewModel();
}
