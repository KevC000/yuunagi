import 'package:get/get.dart';
import 'package:jm_dict/jm_dict.dart';

class DictionaryController extends GetxController {
  String dictionarySearchQuery = '';
  JMDict jmdict = JMDict();

  @override
  void onInit() {
    jmdict.initFromAsset(assetPath: 'assets/raw/JMdict_e_examp.gz');
    super.onInit();
  }

  void setDictionarySearchQuery(String query) {
    dictionarySearchQuery = query;
  }
}
