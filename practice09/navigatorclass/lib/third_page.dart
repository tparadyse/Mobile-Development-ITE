import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigatorclass/home_page.dart';

class ThirdPage extends StatelessWidget {
  final String nombre;
  const ThirdPage({Key? key, required this.nombre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              if (Navigator.canPop(context)) {
                Navigator.pop(context);
              }
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Third Page Preview'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Text(
                '$nombre',
                style: const TextStyle(fontSize: 30),
              )
            ],
          ),
        ),
      ),
    );
  }
}
