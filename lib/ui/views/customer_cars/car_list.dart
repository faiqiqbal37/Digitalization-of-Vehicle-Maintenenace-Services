import 'package:disertation/app/app.locator.dart';
import 'package:disertation/services/cars_service_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarListItem extends StatelessWidget {
  final String make;
  final String vehicleType;
  final String regNumber;
  final String carId;

  CarListItem(
      {required this.make,
      required this.vehicleType,
      required this.regNumber,
      required this.carId});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Car Make: $make',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Implement editing functionality
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () async {
                        final _carsService = locator<CarsServiceService>();
                        await _carsService.deleteServiceById(carId);
                        // Implement delete functionality
                      },
                    ),
                  ],
                ),
              ],
            ),
            Text('Vehicle Type: $vehicleType'),
            Text('Reg Number: $regNumber'),
          ],
        ),
      ),
    );
  }
}
