import 'package:flutter/material.dart';
import 'package:growing_developer/pages/first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Growing Developer',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: GettingStarted(),
    );
  }
}