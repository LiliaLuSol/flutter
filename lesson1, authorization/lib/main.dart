import 'package:flutter/material.dart';
import 'package:lab1/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Урок авторизации/1'),
        ),
        body: HomePage(),
      ),
    );
  }
}
