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
            SizedBox(height: 10),
            // Adding a row with two buttons
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: viewModel.navigateToCustomerLogin,
                  child: Text('Customer'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                        Colors.blue, // Different color for differentiation
                  ),
                ),
                SizedBox(width: 8), // Spacing between the two buttons
                ElevatedButton(
                  onPressed: viewModel.navigateToServiceProviderLogin,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor:
                        Colors.blue, // Different color for differentiation
                  ),
                  child: Text('Service Provider'),
                ),
                ElevatedButton(
                  onPressed: viewModel.navigateToStackedHome,
                  child: Text('Stacked Home'),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                    width: 8), // Spacing defined earlier, assumed here as well
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
