import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchFAB extends StatelessWidget {
  const SearchFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        context.push('/search');
      },
      backgroundColor: Colors.redAccent[100],
      child: const Icon(Icons.search),
    );
  }
}
