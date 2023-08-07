import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ListsPage extends StatefulWidget {
  const ListsPage({super.key});

  @override
  State<ListsPage> createState() => _ListsPageState();
}

class _ListsPageState extends State<ListsPage> {
  @override
  Widget build(BuildContext context) {

    return const Text('Lists');
  }
}
