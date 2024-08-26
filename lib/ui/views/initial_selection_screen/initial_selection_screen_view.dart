import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'initial_selection_screen_viewmodel.dart';

class InitialSelectionScreenView
    extends StackedView<InitialSelectionScreenViewModel> {
  const InitialSelectionScreenView({Key? key}) : super(key: key);

  @override
  Widget builder(
      BuildContext context,
      InitialSelectionScreenViewModel viewModel,
      Widget? child,
      ) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Select the Portal',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
            ),
            SizedBox(height: 20),
            // Replacing buttons with Image assets
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center, // Center-align the row
              children: [
                GestureDetector(
                  onTap: viewModel.navigateToCustomerLogin,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/customer.png',
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(height: 8),
                      Text('Customer'),
                    ],
                  ),
                ),
                SizedBox(width: 40), // Spacing between icons
                GestureDetector(
                  onTap: viewModel.navigateToServiceProviderLogin,
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/provider.png',
                        width: 60,
                        height: 60,
                      ),
                      SizedBox(height: 8),
                      Text('Service Provider'),
                    ],
                  ),
                ),// Spacing between icons

              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  InitialSelectionScreenViewModel viewModelBuilder(
      BuildContext context,
      ) =>
      InitialSelectionScreenViewModel();
}
