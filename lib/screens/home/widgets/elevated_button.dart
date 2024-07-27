import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  const ButtonWidget({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.06,
      child: ElevatedButton(
          onPressed: onPressed,
          child: const Text(
            '7 Days weather Forcasts',
            style: TextStyle(
                fontSize: 18, color: Colors.white, fontWeight: FontWeight.w600),
          )),
    );
  }
}
