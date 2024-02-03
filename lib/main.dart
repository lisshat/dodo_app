import 'pages/colors.dart';
import 'pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { //this widget doesnt have state its not going to change with our interaction in the program
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dodo',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

