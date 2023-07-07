import 'package:bmi_calculator/bmi_calcultor_page.dart';
import 'package:flutter/material.dart';
// ignore_for_file: prefer_const_constructors


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home:BmiCalculator(),
    );
  
}

  }
