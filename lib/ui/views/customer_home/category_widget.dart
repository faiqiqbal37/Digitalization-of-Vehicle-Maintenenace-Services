import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String title;

  CategoryWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 70,
      child: Card(
        child: Center(child: Text(title)),
      ),
    );
  }
}
