import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class BackSheet extends StatelessWidget {
  const BackSheet({super.key});

  @override
  Widget build(BuildContext context) {
    _cabeceras(String nombre, String cantidad, Color color) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 13, bottom: 5),
            child: Text(
              nombre,
              style: const TextStyle(
                fontSize: 20,
                //color: Theme.of(context).cardColor,
                letterSpacing: 1.5,
              ),
            ),
          ),
          Text(
            cantidad,
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 1.5,
              color: color,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      );
    }

    return Container(
      height: 250,
      decoration:
          Constants.sheetBoxDecoration(Theme.of(context).primaryColorDark),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _cabeceras('Ingresos', '\$ 3,500.00', Colors.greenAccent),
          const VerticalDivider(
            thickness: 2,
          ),
          _cabeceras('Gastos', '\$ 1,250.00', Colors.redAccent),
        ],
      ),
    );
  }
}
