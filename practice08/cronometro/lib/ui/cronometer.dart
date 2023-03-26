import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cronometer extends StatefulWidget {
  const Cronometer({super.key});

  @override
  State<Cronometer> createState() => _CronometerState();
}

class _CronometerState extends State<Cronometer> {
  int milisegundos = 0;
  late Timer timer;
  bool estaCorriendo = false;
  List<Widget> laps = [];

  void iniciarCronometro() {
    if (!estaCorriendo) {
      timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
        milisegundos += 10;
        setState(() {});
      });
    }
    estaCorriendo = true;
  }

  void detenerCronometro() {
    timer.cancel();
    estaCorriendo = false;
  }

  void reiniciarCronometro() {
    milisegundos = 0;
    lapNext = 0;
    setState(() {
      laps.clear();
    });
  }

  int lapNext = 0;
  void vueltaCronometro() {
    int lapTotal = milisegundos;
    int lapActual = milisegundos - lapNext;
    laps.add(
      ListTile(
        leading: Text("Lap ${laps.length + 1}",
            style: const TextStyle(color: Colors.white, fontSize: 16.0)),
        title: Text(formatearTiempo(lapTotal),
            style: const TextStyle(color: Colors.white, fontSize: 16.0)),
        trailing: Text(formatearTiempo(lapActual),
            style: const TextStyle(color: Colors.white, fontSize: 16.0)),
      ),
    );
    lapNext = milisegundos;
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  String formatearTiempo(int time) {
    Duration duracion = Duration(milliseconds: time);

    String dosValores(int valor) {
      return valor >= 10 ? '$valor' : '0$valor';
    }

    String minutos = dosValores(duracion.inMinutes.remainder(60));
    String segundos = dosValores(duracion.inSeconds.remainder(60));
    String milisegundos = dosValores(duracion.inMilliseconds.remainder(1000));
    String milis = milisegundos.substring(0, 2);
    return '$minutos:$segundos.$milis';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //IMPRESION DE LOS NUMEROS DEL CRONOMETRO CORRIENDO
        Text(
          formatearTiempo(milisegundos),
          style: const TextStyle(fontSize: 60, color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //BOTON INICIAR UI
            CupertinoButton(
                onPressed: iniciarCronometro,
                child: const Text('Iniciar',
                    style: TextStyle(fontSize: 25, color: Colors.greenAccent))),
            //BOTON DETENER UI
            CupertinoButton(
                onPressed: detenerCronometro,
                child: const Text('Detener',
                    style: TextStyle(fontSize: 25, color: Colors.redAccent))),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //BOTON REINICIAR UI
            CupertinoButton(
                onPressed: reiniciarCronometro,
                child: const Text('Reiniciar',
                    style: TextStyle(fontSize: 25, color: Colors.white))),
            //BOTON VUELTA UI
            CupertinoButton(
                onPressed: vueltaCronometro,
                child: const Text('Vuelta',
                    style: TextStyle(fontSize: 25, color: Colors.white))),
          ],
        ),

        SizedBox(
          height: 400,
          width: 500,
          child: ListView.builder(
              itemCount: laps.length,
              itemBuilder: (context, index) => laps.reversed.toList()[index]),
        )
      ],
    );
  }
}
