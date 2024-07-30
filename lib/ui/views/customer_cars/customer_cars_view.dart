import 'package:disertation/ui/views/common_components/customer/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'car_list.dart';
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
      bottomNavigationBar: CustomerBottomNavigationBar(),
      body: Column(
        children: [
          SizedBox(height: 60),
          Icon(Icons.directions_car, size: 80, color: Colors.black),
          Text("My Cars",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 2, // Assuming there are two cars for example
              itemBuilder: (BuildContext context, int index) {
                return CarListItem(
                  make: 'Toyota Camry',
                  modelYear: '2018',
                  vehicleType: 'Sedan',
                  regNumber: 'SXC18 PKU',
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: viewModel.navigateToAddCar,
        child: Icon(Icons.add),
        tooltip: 'Add Car',
      ),
    );
  }

  @override
  CustomerCarsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CustomerCarsViewModel();
}
