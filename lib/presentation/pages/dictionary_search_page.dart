import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DictionarySearchPage extends StatefulWidget {
  const DictionarySearchPage({super.key});

  @override
  State<DictionarySearchPage> createState() => _DictionarySearchPageState();
}

class _DictionarySearchPageState extends State<DictionarySearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back)),
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
