import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PlayPage extends StatefulWidget {
  const PlayPage({super.key});

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('Play'),
    );
  }
}
