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
            child: FutureBuilder<List<Map<String, dynamic>>>(
              future: viewModel.loadCustomerCars(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasData && snapshot.data!.isNotEmpty) {
                    return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        var car = snapshot.data![index];
                        return CarListItem(
                          carId: car["carId"],
                          make: car["carMake"].toString(),
                          vehicleType: car["vehicleType"].toString(),
                          regNumber: car["registration"].toString(),
                        );
                      },
                    );
                  } else if (snapshot.hasData && snapshot.data!.isEmpty) {
                    return Center(
                      child: Text('No cars added yet.'),
                    );
                  } else if (snapshot.hasError) {
                    return Center(
                      child: Text('Error: ${snapshot.error}'),
                    );
                  }
                }
                return Center(child: CircularProgressIndicator());
              },
            ),
          )
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
