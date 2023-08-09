import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yuunagi/util/app_controller.dart';
import 'package:yuunagi/util/routers/app_router.gr.dart';

class SearchFAB extends GetView<AppController> {
  const SearchFAB({super.key});


  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
    context.router.push(const DictionarySearchPageRoute());
      },
      backgroundColor: const Color.fromRGBO(225, 74, 107, 1),
      child: const Icon(Icons.search),
    );
  }
}
