import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yuunagi/controllers/dictionary_controller.dart';
import 'package:yuunagi/views/widgets/word_result_listview.dart';

class DictionarySearchWidget extends StatelessWidget {
  const DictionarySearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final DictionaryController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: (value) {
            controller.setDictionarySearchQuery(value);
          },
          controller: controller.textEditingController,
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
            suffixIcon: IconButton(
              onPressed: () {
                controller.searchWord();
              },
              icon: const Icon(Icons.search),
              color: Colors.grey,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Obx(() =>
                  WordResultListView(words: controller.wordResults.value))),
        ],
      ),
    );
  }
}
