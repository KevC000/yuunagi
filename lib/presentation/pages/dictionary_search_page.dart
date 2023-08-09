import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../util/app_controller.dart';

@RoutePage()
class DictionarySearchPage extends StatelessWidget {
  const DictionarySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController controller = Get.find();

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              context.router.pop();
            },
            icon: const Icon(Icons.arrow_back)),
        title: TextField(
          onChanged: (value) {
            controller.setDictionarySearchQuery(value);
          },
          controller:
              TextEditingController(text: controller.dictionarySearchQuery),
          autofocus: true,
          decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.redAccent, width: 2.0),
              borderRadius: BorderRadius.circular(25.0),
            ),
            hintText: 'Search...',
            focusColor: Colors.deepOrange,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.redAccent),
              borderRadius: BorderRadius.circular(25.0),
            ),
            suffixIcon: const IconButton(
              onPressed: null,
              icon: Icon(Icons.search),
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
