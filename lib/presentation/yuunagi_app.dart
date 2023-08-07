import 'package:flutter/material.dart';
import 'package:yuunagi/presentation/pages/home_page.dart';
import 'package:yuunagi/presentation/pages/lists_page.dart';
import 'package:yuunagi/presentation/pages/play_page.dart';
import 'package:yuunagi/presentation/pages/profile_page.dart';
import 'package:yuunagi/presentation/pages/settings_page.dart';
import 'package:yuunagi/presentation/pages/shop_page.dart';
import 'package:yuunagi/presentation/widgets/dictionary_search_widget.dart';
import 'package:yuunagi/presentation/widgets/yuunagi_drawer.dart';
import 'package:yuunagi/presentation/widgets/search_fab.dart';
import 'package:yuunagi/presentation/widgets/yuunagi_rail.dart';

class YuunagiApp extends StatefulWidget {
  const YuunagiApp({super.key});

  @override
  State<YuunagiApp> createState() => _YuunagiAppState();
}

class _YuunagiAppState extends State<YuunagiApp> {
  final List<Widget> mainContent = [
    const HomePage(),
    const ListsPage(),
    const PlayPage(),
    const ShopPage(),
    const SettingsPage(),
    const ProfilePage(),
  ];
  int selectedContent = 0;

  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    final drawer = YuunagiDrawer(changeScreen: (index) {
      setState(() => selectedContent = index);
    });
    final rail = YuunagiRail(
        selectedIndex: 0,
        changeScreen: (index) {
          setState(() => selectedContent = index);
        });

    return Scaffold(
        appBar: AppBar(
          title: const Text('Yuunagi'),
          centerTitle: true,
        ),
        drawer: currentWidth < 600 ? drawer : null,
        floatingActionButton: currentWidth < 900 ? const SearchFAB() : null,
        body: Row(
          children: <Widget>[
            currentWidth >= 600 && currentWidth < 1200
                ? rail
                : const SizedBox(),
            currentWidth >= 1200 ? drawer : const SizedBox(),
            const VerticalDivider(thickness: 1, width: 1),
            Expanded(child: mainContent[selectedContent]),
            currentWidth >= 900
                ? const Row(
                    children: [
                      VerticalDivider(thickness: 1, width: 1),
                      SizedBox(width: 275, child: DictionarySearchWidget()),
                    ],
                  )
                : const SizedBox(),
          ],
        ));
  }
}
