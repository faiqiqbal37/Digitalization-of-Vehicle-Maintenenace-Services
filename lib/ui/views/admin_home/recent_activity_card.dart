import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RecentActivityCard extends StatelessWidget {
  final String title;
  final String content;
  final String buttonText;

  const RecentActivityCard(
      {Key? key,
      required this.title,
      required this.content,
      required this.buttonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(content),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Add your navigation or view logic here
              },
              child: Text(buttonText),
            ),
          ],
        ),
      ),
    );
  }
}
