import 'package:flutter/material.dart';

class BookingWidget extends StatelessWidget {
  final String service;
  final String provider;
  final String date;
  final double price;
  final String status;

  BookingWidget({
    required this.service,
    required this.provider,
    required this.date,
    required this.price,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text(service),
        subtitle: Text(
            'Provider: $provider\nDate: $date\nPrice: \$${price.toString()}\nStatus: $status'),
        trailing: ElevatedButton(
          child: Text('View Detail'),
          onPressed: () {},
        ),
      ),
    );
  }
}
