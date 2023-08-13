import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../models/kanji.dart';
import '../models/word.dart';

class DictionaryController extends GetxController {
  RxList<Kanji> kanjiResults = RxList<Kanji>([]);
  RxList<String> wordResults = RxList<String>([]);
  Rx<Word?> wordDetail = Rx<Word?>(null);
  RxBool isLoading = RxBool(false);

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
    kanjiResults.close();
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
