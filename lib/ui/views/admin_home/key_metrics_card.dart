import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class KeyMetricsCard extends StatelessWidget {
  final String metric;
  final String value;

  const KeyMetricsCard({Key? key, required this.metric, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(metric),
        trailing: Text(value,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
