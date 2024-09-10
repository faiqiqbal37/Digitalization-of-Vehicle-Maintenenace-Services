import 'package:disertation/ui/views/common_components/customer/navigation_bar.dart';
import 'package:disertation/ui/views/customer_add_cars/customer_add_cars_view.form.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';

import 'customer_add_cars_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'carMake'),
  FormTextField(name: 'registration'),
  FormTextField(name: 'vehicleType'),
  FormTextField(name: 'model'),
])
class CustomerAddCarsView extends StackedView<CustomerAddCarsViewModel>
    with $CustomerAddCarsView {
  const CustomerAddCarsView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CustomerAddCarsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      bottomNavigationBar: CustomerBottomNavigationBar(),
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 60),
          Text("Add Your Car",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          Expanded(
            child: Card(
              color: Colors.white,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Car Make'),
                          controller: carMakeController,
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Car Model'),
                          controller: modelController,
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Car Type'),
                          controller: vehicleTypeController,
                        ),
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Registration'),
                          controller: registrationController,
                        ),
                        SizedBox(height: 10),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: viewModel.addCar,
                          child: Text('Add Car'),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void onViewModelReady(CustomerAddCarsViewModel viewModel) {
    syncFormWithViewModel(viewModel);
  }

  @override
  CustomerAddCarsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomerAddCarsViewModel();

  @override
  void onDispose(CustomerAddCarsViewModel viewModel) {
    super.onDispose(viewModel);
    disposeForm();
  }
}
