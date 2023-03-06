import 'package:flutter/material.dart';
import 'package:manhwas/home_page.dart';

class ClassDisaster extends StatelessWidget {
  const ClassDisaster({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Return of the Class Disaster'),
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
              child: Image(image: AssetImage('assets/disasterclass.jpeg')),
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
                                  Column(children: const [Text('2021')])
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
                                  Column(children: const [Text('Author SAN.G')])
                                ],
                              ),
                              Row(
                                children: [
                                  Column(children: const [Text('Artist(s)')]),
                                  Column(
                                      children: const [Text('Redice Studio')])
                                ],
                              ),
                              Row(
                                children: [
                                  Column(children: const [Text('Genre(s)')]),
                                  Column(children: const [
                                    Text(
                                        'Action, Adventure, Fantasy, Magician, Reencarnation, Shounen')
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
                              //       'He was the greatest hero on earth. \n"But hes dead. How could the guy we killed come back?" \n"I dont know. But if he can come back, let him." \nDid I really come back after 20 years? \n"Why are you so surprised? What? Did you do something to hurt your conscience?" \nYou bastards just wait.'),
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
