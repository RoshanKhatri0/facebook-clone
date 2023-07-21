import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            FontAwesomeIcons.x,
            color: Colors.black,
            size: 20,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text('Post', style: TextStyle(color: Colors.black)),
          ),
        ],
        title: Text(
          "Create post",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFFf7f7f7),
      ),
    );
  }
}
