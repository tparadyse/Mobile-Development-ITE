import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import 'package:balance/pages/add_expenses.dart';
import '../../components/custom_animation.dart';

class CustomFAB extends StatelessWidget {
  const CustomFAB({super.key});

  @override
  Widget build(BuildContext context) {
    List<SpeedDialChild> botones = [];

    // Boton para agregar gastos
    botones.add(
      SpeedDialChild(
        backgroundColor: Colors.red[300],
        child: const Icon(Icons.remove),
        label: 'Gasto',
        labelStyle: const TextStyle(
          fontSize: 16,
        ),
        labelBackgroundColor: Colors.transparent,
        onTap: () {
          Navigator.push(
              context,
              CustomAnimation(
                page: const AddExpenses(),
              ));
        },
      ),
    );

    // Boton para agregar ingresos
    botones.add(
      SpeedDialChild(
        backgroundColor: Colors.green[300],
        child: const Icon(Icons.add),
        label: 'Ingreso',
        labelStyle: const TextStyle(
          fontSize: 16,
        ),
        labelBackgroundColor: Colors.transparent,
        onTap: () {
          Navigator.push(
              context,
              CustomAnimation(
                page: const AddExpenses(),
                curve: Curves.easeInOutBack,
                duration: const Duration(milliseconds: 500),
              ));
        },
      ),
    );

    return SpeedDial(
      backgroundColor: Colors.grey[900],
      foregroundColor: Colors.white,
      childMargin: const EdgeInsets.symmetric(horizontal: 15),
      childrenButtonSize: const Size(65, 65),
      icon: Icons.add,
      activeIcon: Icons.close,
      children: botones,
    );
  }
}




/* import 'package:flutter/material.dart';

class CustomAnimation<T> extends PageRoute<T> {
  CustomAnimation({required this.builder});

  final WidgetBuilder builder;

  @override
  Color get barrierColor => Colors.black54;

  @override
  String? get barrierLabel => null;

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secAnimation) {
    return builder(context);
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 500);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secAnimation, Widget child) {
    return FadeTransition(
      opacity: animation,
      child: SlideTransition(
        position:
            Tween<Offset>(begin: const Offset(1.0, 0.0)).animate(animation),
        child: child,
      ),
    );
  }
} */
