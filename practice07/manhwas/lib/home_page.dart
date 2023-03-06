import 'package:flutter/material.dart';
import 'package:manhwas/main_drawer.dart';
import 'package:manhwas/screens/classdisaster.dart';
import 'package:manhwas/screens/sololeveling.dart';
import 'package:manhwas/screens/towerofgod.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('CLONMANHWAS'),
        actions: const [Icon(Icons.search)],
      ),
      drawer: const MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[CardsWidget()],
        ),
      ),
    );
  }
}

class CardsWidget extends StatelessWidget {
  const CardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Column(
            children: [
              Card(
                elevation: 20,
                margin: const EdgeInsets.only(bottom: 10),
                color: const Color.fromARGB(255, 93, 17, 33),
                child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: OutlinedButton(
                      onPressed: () {
                        final ruta = MaterialPageRoute(
                            builder: (context) => const ClassDisaster());
                        Navigator.pushReplacement(context, ruta);
                      },
                      child: Column(
                        children: const [
                          SizedBox(
                            height: 100,
                            width: 300,
                            child: Center(
                              child: Text(
                                'Return of the Disater Class Hero',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Card(
                elevation: 20,
                margin: const EdgeInsets.only(bottom: 10),
                color: const Color.fromARGB(255, 93, 17, 33),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: OutlinedButton(
                    onPressed: () {
                      final ruta = MaterialPageRoute(
                          builder: (context) => const TowerGod());
                      Navigator.pushReplacement(context, ruta);
                    },
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 100,
                          width: 300,
                          child: Center(
                            child: Text(
                              'Tower of God',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 20,
                margin: const EdgeInsets.only(bottom: 10),
                color: const Color.fromARGB(255, 93, 17, 33),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: OutlinedButton(
                    onPressed: () {
                      final ruta = MaterialPageRoute(
                          builder: (context) => const SoloLeveling());
                      Navigator.pushReplacement(context, ruta);
                    },
                    child: Column(
                      children: const [
                        SizedBox(
                          height: 100,
                          width: 300,
                          child: Center(
                            child: Text(
                              'Solo Leveling',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
