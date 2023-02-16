import 'package:flutter/material.dart';
import 'package:xylophone/xilofono.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Xilofono(),
    );
  }
}
