import 'package:flutter/material.dart';

class WordResultColumn extends StatelessWidget {
  const WordResultColumn({super.key});

  @override
  Widget build(BuildContext context) {
    String kanjis = '';
    String readings = '';
    String allReadings = '';

    return SizedBox(
      height: 65,
      child: Column(
        children: [
          Expanded(
            child: RichText(
              overflow: TextOverflow.ellipsis,
              text: TextSpan(
                style: DefaultTextStyle.of(context).style.copyWith(
                    fontSize:
                        18), // This will take the default text style and adjust the font size
                children: allReadings.split(',').expand((word) {
                  int index = allReadings.split(',').indexOf(word);
                  return [
                    TextSpan(
                      text: word.trim(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    if (index != allReadings.split(',').length - 1)
                      const TextSpan(
                        text: ', ',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 16),
                      ),
                  ];
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
