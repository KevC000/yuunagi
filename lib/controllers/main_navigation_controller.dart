import 'package:get/get.dart';
import 'package:yuunagi/views/pages/home_page.dart';
import 'package:yuunagi/views/pages/lists_page.dart';
import 'package:yuunagi/views/pages/play_page.dart';
import 'package:yuunagi/views/pages/profile_page.dart';
import 'package:yuunagi/views/pages/settings_page.dart';
import 'package:yuunagi/views/pages/shop_page.dart';

class MainNavigationController extends GetxController {
  final screens = [
    const HomePage(),
    const ListsPage(),
    const PlayPage(),
    const ShopPage(),
    const SettingsPage(),
    const ProfilePage(),
  ];
  var screenIndex = RxInt(0);
  void changeScreens(int index) {
    screenIndex.value = index;
  }
}
