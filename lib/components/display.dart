import 'package:flutter/material.dart';

class Display extends StatefulWidget {
  const Display({Key? key}) : super(key: key);

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.bottomRight,
            //color: Colors.blue,
            child: const Text(
              'input',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(15),
            alignment: Alignment.bottomRight,
            //color: Colors.red,
            child:
                const Text('resposta', style: TextStyle(color: Colors.white)),
          ),
        ),
      ],
    );
  }
}
