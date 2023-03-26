import 'package:flutter/material.dart';

class CustomAnimation extends PageRouteBuilder {
  final Widget page;
  final RouteSettings settings;
  final Curve curve;
  final Duration duration;

  CustomAnimation({
    required this.page,
    this.settings = const RouteSettings(),
    this.curve = Curves.linear,
    this.duration = const Duration(milliseconds: 300),
  }) : super(
            pageBuilder: (_, __, ___) => page,
            settings: settings,
            transitionDuration: duration,
            transitionsBuilder: (_, animation, __, child) {
              FadeTransition(opacity: animation, child: child);
              animation =
                  CurvedAnimation(parent: animation, curve: Curves.easeOutBack);
              return ScaleTransition(
                  alignment: const Alignment(0.8, 1),
                  scale: animation,
                  child: child);
            });
}








/*   var pageRouteBuilder = PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 500),
      transitionsBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secAnimation, Widget child) {
        animation =
            CurvedAnimation(parent: animation, curve: Curves.easeOutBack);
        return ScaleTransition(
          alignment: const Alignment(0.8, 1),
          scale: animation,
          child: child,
        
        );
      },
      pageBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return const AddExpenses();
      }); */