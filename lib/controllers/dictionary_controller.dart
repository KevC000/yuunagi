import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jm_dict/jm_dict.dart';

class DictionaryController extends GetxController {
  JMDict jmdict = JMDict();

  var dictionarySearchQuery = RxString('');
  final textEditingController = TextEditingController();
  var wordSearchResults = RxList<JMDictEntry>([]);
  var kanjiSearchResults = RxList<JMDictEntry>([]);

  final mainContent = [];
  var contentIndex = RxInt(0);

  

  @override
  void onInit() {
    jmdict.initFromAsset(assetPath: 'assets/raw/JMdict_e_examp.gz');
    textEditingController.text = dictionarySearchQuery.value;
    textEditingController.addListener(() {
      dictionarySearchQuery.value = textEditingController.text;
    });
    super.onInit();
  }

  void setDictionarySearchQuery(String query) {
    dictionarySearchQuery.value = query;
  }

  void searchWord() {
    jmdict.search(keyword: dictionarySearchQuery.value);
  }
}
