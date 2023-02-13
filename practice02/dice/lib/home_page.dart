import 'package:flutter/material.dart';
import 'dice.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text('Dice'),
        backgroundColor: Colors.blueGrey,
      ),
      body: const DicePage(),
    );
  }
}
