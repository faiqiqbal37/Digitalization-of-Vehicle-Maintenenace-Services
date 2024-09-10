import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final String title;
  final String content;

  const ProfileItem({Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Replace this with your app's specific item background color
    final Color itemBackgroundColor = Theme.of(context).cardColor;

    return ListTile(
      title: Text(
        title,
        style: TextStyle(color: Colors.black), // Adjust color if needed
      ),
      subtitle: Text(
        content,
        style: TextStyle(color: Colors.black), // Adjust color if needed
      ),
      tileColor: itemBackgroundColor,
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    );
  }
}
