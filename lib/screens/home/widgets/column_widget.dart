import 'package:flutter/material.dart';

class WidgetColumn extends StatelessWidget {
  final String title;
  final String secondParameter;
  const WidgetColumn(
      {super.key, required this.title, required this.secondParameter});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          secondParameter,
          // '06:41 am',
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
