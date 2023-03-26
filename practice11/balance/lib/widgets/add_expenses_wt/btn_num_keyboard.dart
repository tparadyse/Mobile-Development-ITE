import 'package:flutter/material.dart';

import '../../components/custom_btn.dart';

class BtnNumKeyboard extends StatefulWidget {
  const BtnNumKeyboard({super.key});

  @override
  State<BtnNumKeyboard> createState() => _BtnNumKeyboardState();
}

class _BtnNumKeyboardState extends State<BtnNumKeyboard> {
  String importe = '0.00';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _numPad();
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          children: [
            const Text('Cantidad Ingresada'),
            Text(
              '\$ $importe',
              style: const TextStyle(
                fontSize: 30,
                letterSpacing: 3,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _numPad() {
    _num(String _text, double _height) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          setState(() {
            if (importe == '0.00') importe = '';
            importe += _text;
          });
        },
        child: SizedBox(
          height: _height,
          child: Center(
            child: Text(
              _text,
              style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      );
    }

    showModalBottomSheet(
      barrierColor: Colors.transparent,
      //isDismissible: false,
      //enableDrag: false,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(35),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 450,
          child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              var height = constraints.biggest.height / 5;
              return Column(
                children: [
                  Table(
                    border: TableBorder.symmetric(
                      inside: BorderSide(
                        color: Colors.grey.shade400,
                        width: 0.1,
                      ),
                    ),
                    children: [
                      TableRow(
                        children: [
                          _num('1', height),
                          _num('2', height),
                          _num('3', height),
                        ],
                      ),
                      TableRow(
                        children: [
                          _num('4', height),
                          _num('5', height),
                          _num('6', height),
                        ],
                      ),
                      TableRow(
                        children: [
                          _num('7', height),
                          _num('8', height),
                          _num('9', height),
                        ],
                      ),
                      TableRow(
                        children: [
                          _num('.', height),
                          _num('0', height),
                          GestureDetector(
                            onLongPress: () {
                              setState(() {
                                importe = '0.00';
                              });
                            },
                            behavior: HitTestBehavior.opaque,
                            onTap: () {
                              setState(() {
                                if (importe.isNotEmpty) {
                                  importe =
                                      importe.substring(0, importe.length - 1);
                                }
                              });
                            },
                            child: SizedBox(
                              height: height,
                              child: const Icon(Icons.backspace_outlined),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              CustomButton(
                                onTap: () {},
                                textButton: 'CANCEL',
                                textColor: Colors.redAccent,
                                boxDecoration: BoxDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: Theme.of(context).cardColor),
                                ),
                                height: constraints.biggest.height / 5,
                                width: constraints.minWidth,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              CustomButton(
                                onTap: () {},
                                textButton: 'ENTER',
                                textColor: Colors.greenAccent,
                                boxDecoration: BoxDecoration(
                                  color:
                                      Theme.of(context).scaffoldBackgroundColor,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                      color: Theme.of(context).cardColor),
                                ),
                                height: constraints.biggest.height / 5,
                                width: constraints.minWidth,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ),
        );
      },
    );
  }
}
