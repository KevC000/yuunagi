import 'package:flutter/material.dart';
import 'package:jm_dict/jm_dict.dart';

class WordResultListView extends StatelessWidget {
  const WordResultListView({super.key, required this.words});
  final List<JMDictEntry> words;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return Text(words[index].readingElements.toList()[0].element);
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: words.length);
  }
}
