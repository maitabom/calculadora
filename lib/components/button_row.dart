import 'package:calculadora/components/button.dart';
import 'package:flutter/material.dart';

class ButtonRow extends StatelessWidget {
  final List<Button> buttons;

  const ButtonRow(this.buttons, {super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(<Widget>[], (list, button) {
          list.isEmpty
              ? list.add(button)
              : list.addAll([SizedBox(width: 0.75), button]);

          return list;
        }),
      ),
    );
  }
}
