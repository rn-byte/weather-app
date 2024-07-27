import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  final String imageUrl;
  final String cTitleFirst;
  final String cTitleSecond;
  const RowColumnWidget({
    super.key,
    required this.imageUrl,
    required this.cTitleFirst,
    required this.cTitleSecond,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          imageUrl,
          scale: 8,
        ),
        const SizedBox(
          width: 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cTitleFirst,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w300),
            ),
            const SizedBox(
              height: 3,
            ),
            Text(
              cTitleSecond,
              // '06:41 am',
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w700),
            ),
          ],
        )
      ],
    );
  }
}
