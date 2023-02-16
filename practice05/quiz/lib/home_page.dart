import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> puntuacion = [];
  List<String> preguntas = [
    'Los globulos rojos viven 4 meses?',
    'Elcuerpo humano adulto tiene 306 huesos',
    'La cobalamina es una vitamina',
  ];
  int numeroPregunta = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                preguntas[numeroPregunta],
                style: TextStyle(fontSize: 50),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(8.0)),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    numeroPregunta++;
                    puntuacion.add(
                      const Icon(
                        Icons.check,
                        size: 40,
                        color: Color.fromARGB(255, 7, 255, 135),
                      ),
                    );
                  });
                },
                child: const Text(
                  'Verdadero',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(8.0)),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    numeroPregunta++;
                    puntuacion.add(
                      const Icon(
                        Icons.close,
                        size: 40,
                        color: Color.fromARGB(255, 255, 7, 7),
                      ),
                    );
                  });
                },
                child: const Text(
                  'Falso',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        Row(
          children: puntuacion,
        )
      ],
    );
  }
}
