import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:navigatorclass/second_page.dart';
import 'package:navigatorclass/third_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigator Class')),
      body: Center(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              const Text('INDEX'),
              CupertinoButton(
                  child: const Text('Second Page'),
                  onPressed: () {
                    Route route =
                        MaterialPageRoute(builder: (__) => const SecondPage());
                    Navigator.push(context, route);
                  }),
              CupertinoButton(
                  child: const Text('Third Page'),
                  onPressed: () {
                    Route route = MaterialPageRoute(
                        builder: (__) => const ThirdPage(
                              nombre: 'JUAN',
                            ));
                    Navigator.push(context, route);
                    print('Continua el codigo');
                  })
            ],
          ),
        ),
      ),
    );
  }
}
