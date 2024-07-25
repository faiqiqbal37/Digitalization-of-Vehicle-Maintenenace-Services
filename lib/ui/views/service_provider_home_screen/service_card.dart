import 'package:flutter/material.dart';

class ServiceCard extends StatelessWidget {
  final String service;
  final String duration;
  final String price;

  const ServiceCard({
    Key? key,
    required this.service,
    required this.duration,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text(service),
        subtitle: Text('$duration - $price'),
        trailing: ElevatedButton(
          onPressed: () {},
          child: Text('View Details'),
        ),
      ),
    );
  }
}
