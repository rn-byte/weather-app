import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: const Icon(Icons.search),
            hintText: 'Enter Location to Search',
            contentPadding: const EdgeInsets.all(12),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.transparent),
              borderRadius: BorderRadius.circular(30),
            )),
      ),
    );
  }
}
