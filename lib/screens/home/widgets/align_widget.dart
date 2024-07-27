import 'package:flutter/material.dart';

class AlignWidget extends StatelessWidget {
  final double x, y;
  final double h, w;
  final Color color;
  final BoxShape? shape;
  const AlignWidget(
      {super.key,
      required this.color,
      required this.x,
      required this.y,
      required this.h,
      required this.w,
      this.shape});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(x, y),
      child: Container(
        height: h,
        width: w,
        decoration: BoxDecoration(
          shape: shape!,
          color: color,
        ),
      ),
    );
  }
}
