import 'dart:ui';

import 'package:flutter/material.dart';

class BackdropFilterWidget extends StatelessWidget {
  final double x, y;
  final Color color;
  const BackdropFilterWidget({
    super.key,
    required this.x,
    required this.y,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: x, sigmaY: y),
      child: Container(
        decoration: BoxDecoration(
          color: color,
        ),
      ),
    );
  }
}
