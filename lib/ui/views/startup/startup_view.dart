import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:stacked/stacked.dart';
import 'package:disertation/ui/common/ui_helpers.dart';

import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white, // White background
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 20), // Spacing for better layout
            Image.asset(
              'assets/car.png', // Reference the image from assets
              width: 200, // Adjust width as needed
              height: 200, // Adjust height as needed
            ),
            SizedBox(height: 20), // Spacing after the image
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                horizontalSpaceSmall,
                SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    backgroundColor:
                        Colors.blue[100], // Light blue background circle
                    valueColor: AlwaysStoppedAnimation<Color>(
                      Colors.blue[800]!, // Deep blue progress indicator
                    ),
                    strokeWidth: 2,
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
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}
