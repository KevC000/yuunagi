import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';


class SearchFAB extends StatelessWidget {
  const SearchFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
       context.router.pushNamed('/search');
      },
      backgroundColor: Colors.redAccent[100],
      child: const Icon(Icons.search),
    );
  }
}