import 'package:get/get.dart';

class AppController extends GetxController {
  String dictionarySearchQuery = 'test';

  void setDictionarySearchQuery(String query) {
    dictionarySearchQuery = query;
  }
}
