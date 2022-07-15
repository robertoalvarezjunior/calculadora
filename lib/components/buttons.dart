import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      this.textColor = Colors.black,
      required this.text,
      this.tam = false,
      this.color = defaultColor})
      : super(key: key);

  const Button.tam(
      {Key? key,
      this.textColor = Colors.white,
      required this.text,
      this.tam = true,
      this.color = dark})
      : super(key: key);

  const Button.oper(
      {Key? key,
      this.textColor = Colors.white,
      required this.text,
      this.tam = false,
      this.color = operation})
      : super(key: key);

  const Button.other(
      {Key? key,
      this.textColor = Colors.white,
      required this.text,
      this.tam = false,
      this.color = dark})
      : super(key: key);

  static const dark = Color.fromRGBO(82, 82, 82, 1);
  static const defaultColor = Color.fromRGBO(112, 112, 112, 1);
  static const operation = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool tam;
  final Color color;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: tam ? 2 : 1,
      child: tam
          ? ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: color,
                alignment: Alignment.center,
              ),
              onPressed: () {},
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                ),
              ),
            )
          : ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: color,
              ),
              onPressed: () {},
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
    );
  }
}
