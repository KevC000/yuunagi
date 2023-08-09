import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yuunagi/controllers/dictionary_controller.dart';
import 'package:yuunagi/views/pages/dictionary_search_page.dart';

class SearchFAB extends GetView<DictionaryController> {
  const SearchFAB({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Get.to(() => const DictionarySearchPage());
      },
      backgroundColor: const Color.fromRGBO(225, 74, 107, 1),
      child: const Icon(Icons.search),
    );
  }
}
