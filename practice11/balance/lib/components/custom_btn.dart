import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String textButton;
  final BoxDecoration? boxDecoration;
  final double height;
  final double width;
  final Color? textColor;

  const CustomButton({
    super.key,
    required this.onTap,
    required this.textButton,
    this.boxDecoration,
    this.height = 50,
    this.width = 100,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(0),
        margin: const EdgeInsets.symmetric(horizontal: 0),
        decoration: boxDecoration,
        height: height,
        width: width,
        child: Center(
          child: Text(
            textButton,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
