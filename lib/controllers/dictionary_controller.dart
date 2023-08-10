import 'package:flutter/material.dart';

import 'package:get/get.dart';

class DictionaryController extends GetxController {
  var wordResults = RxList<String>([]);
  var wordDetail = Rx<String>('');
  var isLoading = RxBool(false);

  var dictionarySearchQuery = RxString('');
  final textEditingController = TextEditingController();
  final wordDetailPage = const Text('WordDetailPage');

  var screenIsDetail = RxBool(false);

  @override
  void onInit() {
    textEditingController.text = dictionarySearchQuery.value;
    textEditingController.addListener(() {
      dictionarySearchQuery.value = textEditingController.text;
    });
    super.onInit();
  }

  @override
  void dispose() {
    wordResults.close();
    wordDetail.close();
    dictionarySearchQuery.close();
    textEditingController.dispose();
    screenIsDetail.close();
    isLoading.close();
    super.dispose();
  }

  void setDictionarySearchQuery(String query) {
    dictionarySearchQuery.value = query;
  }

  void searchWord() async {
    isLoading.value = true;

    isLoading.value = false;
  }

  void setWordDetail(word) {
    wordDetail.value = word;
  }
}
