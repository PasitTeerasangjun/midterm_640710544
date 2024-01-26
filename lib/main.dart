import 'package:flutter/material.dart';
//import 'package:midterm_640710544/pages/midterm.dart';
import 'package:midterm_640710544/pages/midterm.dart';

void main() {
  runApp(const MyApp());
}
 // hi
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const midterm(),
    );
  }
}
