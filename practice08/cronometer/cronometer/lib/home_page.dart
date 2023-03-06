import 'package:flutter/material.dart';

import 'cronometro.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: Container(
              alignment: Alignment.center,
              child: const Cronometro(),
            ),
          )),
    );
  }
}
