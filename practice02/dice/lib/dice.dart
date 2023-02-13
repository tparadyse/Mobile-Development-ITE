import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  DiceState createState() => DiceState();
}

class DiceState extends State<DicePage> {
  int diceNumber = 1;

  void changeDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('assets/images/dice$diceNumber.png'),
              ),
            ),
          ],
        ),
        ElevatedButton(
          style: raisedButtonStyle,
          onPressed: () {
            changeDice();
          },
          child: const Text('CHANGE DICE'),
        ),
      ],
    );
  }
}

//Style for my buttton
final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  foregroundColor: Colors.black87,
  backgroundColor: Colors.grey[300],
  minimumSize: const Size(88, 36),
  padding: const EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(3)),
  ),
);
