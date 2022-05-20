import 'package:flutter/material.dart';
import 'package:food_app/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fooddy',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const Home(),
    );
  }
}
