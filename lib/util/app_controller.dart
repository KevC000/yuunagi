import 'package:get/get.dart';

class AppController extends GetxController {
  String dictionarySearchQuery = '';

  void setDictionarySearchQuery(String query) {
    dictionarySearchQuery = query;
  }
}
