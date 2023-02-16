import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

class Xilofono extends StatefulWidget {
  const Xilofono({super.key});

  @override
  State<Xilofono> createState() => _XilofonoState();
}

class _XilofonoState extends State<Xilofono> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          wavAudio(1, 0xFFFF4D4D),
          wavAudio(2, 0xFFFF8700),
          wavAudio(3, 0xFFFFD300),
          wavAudio(4, 0xFFA1FF0A),
          wavAudio(5, 0xFF0AEFFF),
          wavAudio(6, 0xFF147DF5),
          wavAudio(7, 0xFF580AFF),
        ],
      ),
    );
  }

  Expanded wavAudio(valueSound, valueColor) {
    Audio wav = Audio.load('assets/assets_note$valueSound.wav');
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(backgroundColor: Color(valueColor)),
          onPressed: () {
            wav.play();
          },
          child: Container()),
    );
  }
}
