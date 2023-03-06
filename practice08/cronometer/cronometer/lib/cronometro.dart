import 'dart:async';

import 'package:flutter/material.dart';

class Cronometro extends StatefulWidget {
  const Cronometro({Key? key});

  @override
  State<Cronometro> createState() => _CronometroState();
}

class _CronometroState extends State<Cronometro> {
  List<String> _laps = []; // Lista de tiempos por vuelta
  Stopwatch _stopwatch = Stopwatch(); // Cronómetro
  Timer? _timer; // Temporizador

  void _onStart() {
    _timer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
      setState(() {});
    });
    _stopwatch.start();
  }

  void _onStop() {
    _timer?.cancel();
    _stopwatch.stop();
  }

  void _onReset() {
    setState(() {
      _timer?.cancel();
      _laps.clear();
      _stopwatch.reset();
    });
  }

  void _onLap() {
    setState(() {
      _laps.add(_stopwatch.elapsed.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(_stopwatch.elapsed.toString(),
              style: const TextStyle(fontSize: 50, color: Colors.white)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: _stopwatch.isRunning ? _onStop : _onStart,
                child: Text(_stopwatch.isRunning ? "Stop" : "Start",
                    style: const TextStyle(fontSize: 25, color: Colors.white)),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: _stopwatch.isRunning ? _onLap : null,
                child: const Text("Lap",
                    style: TextStyle(fontSize: 25, color: Colors.white)),
              ),
              const SizedBox(width: 16),
              ElevatedButton(
                onPressed: _onReset,
                child: const Text("Reset",
                    style: TextStyle(fontSize: 25, color: Colors.white)),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: _laps.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Lap ${index + 1}",
                      style:
                          const TextStyle(fontSize: 25, color: Colors.white)),
                  trailing: Text(_laps[index],
                      style:
                          const TextStyle(fontSize: 25, color: Colors.white)),
                );
              },
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: _laps.length,
              itemBuilder: (context, index) {
                final currentLap = _laps[index];
                final previousLap = index > 0 ? _laps[index - 1] : '---';
                final actualLap = currentLap.compareTo(_laps[index]);
                final nextLap =
                    index < _laps.length - 1 ? _laps[index + 1] : '---';
                return ListTile(
                  title: Text("Lap ${index + 1}",
                      style:
                          const TextStyle(fontSize: 25, color: Colors.white)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('prevoius: $previousLap',
                          style: const TextStyle(
                              fontSize: 25, color: Colors.white)),
                      Text('current: $currentLap',
                          style: const TextStyle(
                              fontSize: 25, color: Colors.white)),
                      Text('next: $actualLap',
                          style: const TextStyle(
                              fontSize: 25, color: Colors.white)),
                    ],
                  ),
                  trailing: Text(_laps[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
