import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jm_dict/jm_dict.dart';

class DictionaryController extends GetxController {
  JMDict jmdict = JMDict();
  var wordResults = RxList<JMDictEntry>([]);
  var wordDetail = Rx<JMDictEntry?>(null);

  var dictionarySearchQuery = RxString('');
  final textEditingController = TextEditingController();
  final wordDetailPage = const Text('WordDetailPage');

  var screenIsDetail = RxBool(false);

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
    final query = dictionarySearchQuery.value;
    final results = jmdict.search(keyword: query);
    wordResults.value = results ?? [];// Add this
  }

  void setWordDetail(JMDictEntry word) {
    wordDetail.value = word;
  }
}
