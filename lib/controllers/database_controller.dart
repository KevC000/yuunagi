import 'dart:io';

import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DictionaryController extends GetxController {
  late Future<Database> _database;

  @override
  onInit() {
    _database = openDatabaseFromAsset();
    super.onInit();
  }

  Future<Database> get database async {
    return await _database;
  }

  Future<Database> openDatabaseFromAsset() async {

    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, 'dictionary.db');

    Database db;
    try {
      db = await openDatabase(path);
    } catch (e) {
      ByteData data =
          await rootBundle.load(join("assets/databases", "dictionary.db"));
      List<int> bytes =
          data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes, flush: true);

      db = await openDatabase(path);
    }
    return db;
  }
}
