import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page Preview'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            children: const [
              Text('You stay in second page'),
            ],
          ),
        ),
      ),
    );
  }
}
