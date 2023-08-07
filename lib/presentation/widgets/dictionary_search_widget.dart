import 'package:flutter/material.dart';

class DictionarySearchWidget extends StatefulWidget {
  const DictionarySearchWidget({super.key});

  @override
  State<DictionarySearchWidget> createState() => _DictionarySearchWidgetState();
}

class _DictionarySearchWidgetState extends State<DictionarySearchWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          autofocus: true,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.redAccent, width: 2.0),
              borderRadius: BorderRadius.circular(25.0),
            ),
            hintText: 'Search...',
            focusColor: Colors.deepOrange,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.redAccent),
              borderRadius: BorderRadius.circular(25.0),
            ),
            suffixIcon: const IconButton(
              onPressed: null,
              icon: Icon(Icons.search),
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
