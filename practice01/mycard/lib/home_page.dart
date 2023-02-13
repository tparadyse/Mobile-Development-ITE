import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15.0),
          margin: const EdgeInsetsDirectional.only(top: 100),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage("assets/images/hollow.png"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'JUAN ERNESTO DIAZ',
                style: TextStyle(
                  fontFamily: 'IBM Plex Serif',
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'IBM Plex Serif',
                  fontSize: 18,
                ),
              ),
              const Divider(
                color: Colors.black,
                height: 30,
                thickness: 4,
                indent: 75,
                endIndent: 75,
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                height: 40,
                padding: const EdgeInsets.only(left: 30),
                margin:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.white70,
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Row(
                  children: const [
                    Icon(Icons.phone),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      '646-269-85-85',
                      style: TextStyle(
                        fontFamily: 'IBM Plex Serif',
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 40,
                padding: const EdgeInsets.only(left: 30),
                margin:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white70,
                    border: Border.all(color: Colors.black, width: 2)),
                child: Row(
                  children: const [
                    Icon(Icons.mail),
                    SizedBox(
                      width: 40,
                    ),
                    Text(
                      'al19760726@ite.edu.mx',
                      style: TextStyle(
                        fontFamily: 'IBM Plex Serif',
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
