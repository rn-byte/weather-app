import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String txt;
  final double? fontSize;
  final FontWeight? fw;
  const TextWidget({super.key, required this.txt, this.fontSize, this.fw});

  @override
  Widget build(BuildContext context) {
    return Text(
      txt,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.white,
        fontWeight: fw,
      ),
    );
  }
}
