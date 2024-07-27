import 'package:flutter/material.dart';

class SearchIconWidget extends StatelessWidget {
  final VoidCallback onClicked;
  const SearchIconWidget({super.key, required this.onClicked});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: IconButton(
        onPressed: onClicked,
        icon: const Icon(Icons.search),
      ),
    );
  }
}
