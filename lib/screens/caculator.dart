import 'package:calculadora/components/display.dart';
import 'package:flutter/material.dart';

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(children: [Display('123,45'), Text('Keyboard')]),
    );
  }
}
