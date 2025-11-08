import 'package:calculadora/components/button.dart';
import 'package:calculadora/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) callback;

  const Keyboard({required this.callback, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          ButtonRow([
            Button(text: 'AC', color: Button.colorDark, callback: callback),
            Button(text: '±', color: Button.colorDark, callback: callback),
            Button(text: '%', color: Button.colorDark, callback: callback),
            Button.operation(text: '÷', callback: callback),
          ]),
          SizedBox(height: 0.75),
          ButtonRow([
            Button(text: '9', callback: callback),
            Button(text: '8', callback: callback),
            Button(text: '7', callback: callback),
            Button.operation(text: 'X', callback: callback),
          ]),
          SizedBox(height: 0.75),
          ButtonRow([
            Button(text: '6', callback: callback),
            Button(text: '5', callback: callback),
            Button(text: '4', callback: callback),
            Button.operation(text: '-', callback: callback),
          ]),
          SizedBox(height: 0.75),
          ButtonRow([
            Button(text: '3', callback: callback),
            Button(text: '2', callback: callback),
            Button(text: '1', callback: callback),
            Button.operation(text: '+', callback: callback),
          ]),
          SizedBox(height: 0.75),
          ButtonRow([
            Button.big(text: '0', callback: callback),
            Button(text: ',', callback: callback),
            Button.operation(
              text: '=',
              callback: callback,
              color: Button.colorEqual,
            ),
          ]),
        ],
      ),
    );
  }
}
