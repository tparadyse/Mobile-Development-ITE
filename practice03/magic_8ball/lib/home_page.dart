import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var ballNumber = 1;

  void nextBall() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TextButton(
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset('assets/$ballNumber.png'),
            ),
            onPressed: () {
              nextBall();
            },
          ),
        ],
      ),
    );
  }
}
