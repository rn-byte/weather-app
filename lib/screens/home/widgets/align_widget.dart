import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  final double x, y;
  final Color color;
  const AlignWidget({
    super.key,
    required this.color,
    required this.x,
    required this.y,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(x, y),
      child: Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: color,
        ),
      ),
    );
  }
}
