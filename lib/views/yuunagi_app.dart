import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yuunagi/controllers/main_navigation_controller.dart';
import 'package:yuunagi/views/widgets/dictionary_search_widget.dart';
import 'package:yuunagi/views/widgets/yuunagi_drawer.dart';
import 'package:yuunagi/views/widgets/search_fab.dart';
import 'package:yuunagi/views/widgets/yuunagi_rail.dart';
import 'package:yuunagi/controllers/dictionary_controller.dart';

class YuunagiApp extends StatelessWidget {
  const YuunagiApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final DictionaryController dictionaryController =
        Get.put(DictionaryController());
    final MainNavigationController mainNavigationController =
        Get.put(MainNavigationController());

    const fab = SearchFAB();
    final currentWidth = MediaQuery.of(context).size.width;
    final drawer = YuunagiDrawer(changeScreen: (index) {
      mainNavigationController.changeScreens(index);
    });
    final rail = YuunagiRail(changeScreen: (index) {
      mainNavigationController.changeScreens(index);
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Yuunagi'),
        centerTitle: true,
      ),
      drawer: currentWidth < 600 ? drawer : null,
      floatingActionButton: currentWidth < 900 ? fab : null,
      body: Row(
        children: <Widget>[
          currentWidth >= 600 && currentWidth < 1200 ? rail : const SizedBox(),
          currentWidth >= 1200 ? drawer : const SizedBox(),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
              child: Obx(() => mainNavigationController
                  .screens[mainNavigationController.screenIndex.value])),
          currentWidth >= 900
              ? Row(
                  children: [
                    const VerticalDivider(thickness: 1, width: 1),
                    SizedBox(
                        width:
                            currentWidth >= 1200 ? (currentWidth * .225) : 275,
                        child: const DictionarySearchWidget()),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
