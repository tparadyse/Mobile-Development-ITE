import 'package:flutter/material.dart';
import 'package:manhwas/home_page.dart';

class TowerGod extends StatelessWidget {
  const TowerGod({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tower of God'),
        leading: IconButton(
            onPressed: () {
              final ruta =
                  MaterialPageRoute(builder: (context) => const HomePage());
              Navigator.pushReplacement(context, ruta);
            },
            icon: const Icon(Icons.arrow_back_ios)),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 180,
              width: 50,
              child: Image(image: AssetImage('assets/tof.jpeg')),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.bookmark),
                      Text('Favorite'),
                    ],
                  )),
            ),
            SizedBox(
              child: ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Icon(Icons.visibility), Text('48707')],
                  )),
            ),
            SizedBox(
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(221, 169, 63, 86),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    padding: const EdgeInsets.all(20),
                    child: SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Column(children: const [Text('Release')]),
                                  Column(children: const [Text('2010')])
                                ],
                              ),
                              Row(
                                children: [
                                  Column(children: const [Text('Status')]),
                                  Column(children: const [Text('On going')])
                                ],
                              ),
                              Row(
                                children: [
                                  Column(children: const [Text('Type')]),
                                  Column(children: const [Text('Manhwa')])
                                ],
                              ),
                              Row(
                                children: [
                                  Column(children: const [Text('Authos(s)')]),
                                  Column(children: const [Text('SIU')])
                                ],
                              ),
                              Row(
                                children: [
                                  Column(children: const [Text('Artist(s)')]),
                                  Column(children: const [Text('SIU')])
                                ],
                              ),
                              Row(
                                children: [
                                  Column(children: const [Text('Genre(s)')]),
                                  Column(children: const [
                                    Text(
                                        'Action, Adventure, ,Drama, Fantasy, Mystery, Romance, Supernatural')
                                  ])
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(221, 169, 63, 86),
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10))),
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Synopsis'),
                              // FittedBox(
                              //   child: Text(
                              //       'The tower is a place where the will is tested and where the most incredible desires are fulfilled. If the Tower has chosen you, then all you have to do is to conquer it, and then everything can be yours.'),
                              // ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
