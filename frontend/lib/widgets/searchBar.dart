import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  final TextEditingController controller;

  SearchBar({required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Search for accessible routes',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}
