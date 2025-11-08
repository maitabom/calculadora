import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const colorDark = Color.fromRGBO(82, 82, 82, 1);
  static const colorDefault = Color.fromRGBO(112, 112, 112, 1);
  static const colorOperator = Color.fromRGBO(250, 158, 13, 1);
  static const colorEqual = Color.fromRGBO(248, 73, 3, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) callback;

  const Button({
    required this.text,
    required this.callback,
    this.big = false,
    this.color = colorDefault,
    super.key,
  });

  const Button.big({
    required this.text,
    required this.callback,
    this.big = true,
    this.color = colorDefault,
    super.key,
  });

  const Button.operation({
    required this.text,
    required this.callback,
    this.big = false,
    this.color = colorOperator,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        onPressed: () => callback(text),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0), // Sem bordas arredondadas
          ),
          minimumSize: Size(100, 100), // Define tamanho quadrado
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}
