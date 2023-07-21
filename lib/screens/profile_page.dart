import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.pop(context, "from profile page");
          },
          child: Text(
            "Go back",
            style: TextStyle(fontSize: 28),
          ),
        ),
      ),
    );
  }
}
