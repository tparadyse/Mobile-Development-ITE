import 'package:balance/utils/constants.dart';
import 'package:flutter/material.dart';

class ChartsPage extends StatelessWidget {
  const ChartsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grafos'),
        elevation: 0,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(40),
            child: Text('\$400.00'),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: Constants.sheetBoxDecoration(
                  Theme.of(context).primaryColorDark),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Fecha 22 marzo de 2023'),
                  Text('Seleccionar Categoria'),
                  Text('Agregar comentario'),
                  Text('Finalizar'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
