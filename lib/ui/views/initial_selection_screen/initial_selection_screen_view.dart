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
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: viewModel.navigateToCustomerLogin,
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/customer.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('Customer'),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                GestureDetector(
                  onTap: viewModel.navigateToServiceProviderLogin,
                  child: Column(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image.asset(
                            'assets/provider.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Text('Service Provider'),
                    ],
                  ),
                ),
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
