import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CarListItem extends StatelessWidget {
  final String make;
  final String modelYear;
  final String vehicleType;
  final String regNumber;

  CarListItem({
    required this.make,
    required this.modelYear,
    required this.vehicleType,
    required this.regNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
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
                      onPressed: () {
                        // Implement delete functionality
                      },
                    ),
                  ],
                ),
              ],
            ),
            Text('Model Year: $modelYear'),
            Text('Vehicle Type: $vehicleType'),
            Text('Reg Number: $regNumber'),
          ],
        ),
      ),
    );
  }
}
