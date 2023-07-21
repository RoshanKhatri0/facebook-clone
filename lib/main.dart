import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice/screens/counter_app.dart';
import 'package:practice/screens/counter_app_with_riverpod.dart';
import 'package:practice/screens/create_post.dart';
import 'package:practice/screens/create_story.dart';
import 'package:practice/screens/home.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        '/posts': (context) => CreatePost(),
        '/story': (context) => CreateStory(),
        '/reel': (context) => CreatePost(),
        '/live': (context) => CreateStory(),
      },
    );
  }
}
