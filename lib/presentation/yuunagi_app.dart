import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:jm_dict/jm_dict.dart';
import 'package:yuunagi/presentation/widgets/dictionary_search_widget.dart';
import 'package:yuunagi/presentation/widgets/yuunagi_drawer.dart';
import 'package:yuunagi/presentation/widgets/search_fab.dart';
import 'package:yuunagi/presentation/widgets/yuunagi_rail.dart';
import 'package:yuunagi/util/routers/app_router.gr.dart';

var jmdict = JMDict();

@RoutePage()
class YuunagiApp extends StatefulWidget {
  const YuunagiApp({super.key});

  @override
  State<YuunagiApp> createState() => _YuunagiAppState();
}

class _YuunagiAppState extends State<YuunagiApp> {
  @override
  Widget build(BuildContext context) {
    jmdict.initFromAsset(assetPath: 'assets/raw/JMdict_e_examp.gz');

    const screens = [
      HomePageRoute(),
      ListsPageRoute(),
      PlayPageRoute(),
      ShopPageRoute(),
      SettingsPageRoute(),
      ProfilePageRoute(),
    ];

    final currentWidth = MediaQuery.of(context).size.width;
    final drawer = YuunagiDrawer(changeScreen: (index) {
      context.navigateTo(screens[index]);
    });
    final rail = YuunagiRail(changeScreen: (index) {
      context.navigateTo(screens[index]);
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
          currentWidth >= 600 && currentWidth < 1200 ? rail : const SizedBox(),
          currentWidth >= 1200 ? drawer : const SizedBox(),
          const VerticalDivider(thickness: 1, width: 1),
          const Expanded(child: AutoRouter()),
          currentWidth >= 900
              ?Row(
                  children: [
                    const VerticalDivider(thickness: 1, width: 1),
                    SizedBox(
                        width: currentWidth >= 1200 ? (currentWidth*.225) : 275,
                        child: const DictionarySearchWidget()),
                  ],
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
