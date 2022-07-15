import 'package:calculadora/components/button_row.dart';
import 'package:calculadora/components/buttons.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double espace = 1;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        ButtonRow([
          Button(
            text: 'AC',
          ),
          Button(text: '+/-'),
          Button(text: '%'),
          Button.oper(text: '÷'),
        ]),
        SizedBox(
          height: espace,
        ),
        ButtonRow([
          Button.other(text: '7'),
          Button.other(text: '8'),
          Button.other(text: '9'),
          Button.oper(text: '×'),
        ]),
        SizedBox(
          height: espace,
        ),
        ButtonRow([
          Button.other(text: '4'),
          Button.other(text: '5'),
          Button.other(text: '6'),
          Button.oper(text: '-'),
        ]),
        SizedBox(
          height: espace,
        ),
        ButtonRow([
          Button.other(text: '1'),
          Button.other(text: '2'),
          Button.other(text: '3'),
          Button.oper(text: '+'),
        ]),
        SizedBox(
          height: espace,
        ),
        ButtonRow([
          Button.tam(text: '0'),
          Button.other(text: ','),
          Button.oper(text: '='),
        ]),
      ],
    );
  }
}
