import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chronometer extends StatefulWidget {
  const Chronometer({super.key});

  @override
  State<Chronometer> createState() => _ChronometerState();
}

class _ChronometerState extends State<Chronometer> {
  //initial vars
  int milliseconds = 0;
  bool isRunning = false;
  late Timer timer;
  List lapslist = [];

  //start function
  void startChronometer() {
    if (!isRunning) {
      timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
        milliseconds += 10;
        setState(() {});
      });
      isRunning = true;
    }
  }

  //stop function
  void stopChronometer() {
    timer.cancel();
    isRunning = false;
  }

  //destroys process in memory
  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  //return an string of time data
  String resetTime() {
    Duration duration = Duration(milliseconds: this.milliseconds);

    String twoValues(int value) {
      return value >= 10 ? "$value" : "0$value";
    }

    //String hours = twoValues(duration.inHours);
    String minutes = twoValues(duration.inMinutes.remainder(60));
    String seconds = twoValues(duration.inSeconds.remainder(60));
    String milliseconds = twoValues(duration.inMilliseconds.remainder(1000));
    String millis = milliseconds.substring(0, 2);
    return "$minutes:$seconds:$millis";
  }

  //laps count function
  void addLaps() {
    //String lap = '$minutes:$seconds:$millis';
    setState(() {
      //lapslist.add(lap);
    });
  }

  //principal widget body
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        //Chronometer
        Text(
          resetTime(),
          style: const TextStyle(
              fontSize: 50, color: Colors.white, fontFamily: 'IBMPlexSerif'),
        ),
        //Start & Stop Button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CupertinoButton(
                onPressed: isRunning ? stopChronometer : startChronometer,
                child: Text(isRunning ? 'Stop' : 'Start',
                    style: TextStyle(
                        color: isRunning ? Colors.red[900] : Colors.green[900],
                        fontSize: 25))),
          ],
        ),
        //Restart Button
        CupertinoButton(
            onPressed: () {
              milliseconds = 0;
              setState(() {});
            },
            child: const Text('Restart',
                style: TextStyle(color: Colors.white, fontSize: 20))),
        const SizedBox(height: 15),
        //Create a laplist ui
        Container(
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blueGrey[900]),
          child: ListView.builder(
            itemCount: lapslist.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '${lapslist[index]}',
                      style: const TextStyle(fontSize: 14, color: Colors.white),
                    )
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

/* Widget createButton({Function onTap, Color buttonColor, Color borderColor}) {
  return GestureDetector(
    onTap: () {},
    child: Container(
      height: 200,
      width: 200,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          Container(
            child: Center(
              child: Text('EXAMPLE'),
            ),
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: BorderRadius.circular(45),
              border: Border.all(width: 2.0, color: Colors.black),
            ),
          ),
        ],
      ),
    ),
  );
}
 */