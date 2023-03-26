import 'package:flutter/material.dart';

class AddEntries extends StatelessWidget {
  const AddEntries({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar Gasto'),
      ),
      body: const Center(
        child: Text('Desde ingresos'),
      ),
    );
  }
}
