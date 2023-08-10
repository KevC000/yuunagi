import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/dictionary_controller.dart';

class DictionarySearchPage extends StatelessWidget {
  const DictionarySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DictionaryController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back)),
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
            child: Obx(() {
              if (controller.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else if (controller.wordResults.isEmpty) {
                return const Center(child: Text("No results found"));
              } else {
                 return const Text('lol');
              }
            }),
          ),
        ],
      ),
    );
  }
}
