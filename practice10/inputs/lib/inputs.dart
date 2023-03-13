import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Inputs extends StatefulWidget {
  final String labelInput;

  const Inputs({
    super.key,
    required this.labelInput,
  });

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: TextField(
        style: const TextStyle(fontSize: 15),
        decoration: InputDecoration(
          labelText: widget.labelInput,
          labelStyle: const TextStyle(color: Colors.grey),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400)),
          fillColor: Colors.grey.shade200,
          filled: true,
        ),
      ),
    );
  }
}
