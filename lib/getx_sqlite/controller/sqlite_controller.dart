import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:learning_getx/getx_sqlite/model/demo_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLController extends GetxController {
  late Database database;
  List<DemoModel> listData = [];

  @override
  void onInit() {
    createDatabase();
    super.onInit();
  }

  void createDatabase() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

    openAppDatabase(path: path);
  }

  void openAppDatabase({required String path}) async {
    // open the database
    await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        // When creating the db, create the table
        // todo Primary_key is auto increment
        // in sqlite not support BOOLEAN we can use INTEGER(0,1)
        await db.execute(
          'CREATE TABLE demo (id INTEGER PRIMARY KEY, title TEXT,description TEXT,time TEXT, favorite INTEGER, completed INTEGER)',
        );
        debugPrint("Database is created!");
      },
      onOpen: (Database db) {
        database = db;
        debugPrint("Database is open!");
      },
    );
  }

  void deleteAppDatabase() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');
    await deleteDatabase(path);
    debugPrint("Deleted the database!");
  }

  void selectData() async {
    var data = await database.query("demo");
    for (var i in data) {
      listData.add(DemoModel.fromJson(i));
    }
    debugPrint("Data of length : ${listData.length}");
    debugPrint("Data $data}");
    update();
  }

  void insertData() async {
    var insertData = await database.insert("demo", {
      "title": "NIKE",
      "description": "Popular fashion in the world",
      "time": "12/16/2025",
      "favorite": 1,
      "completed": 0,
    });
    selectData();
    debugPrint("$insertData is Inserted!");
    update();
  }

  void updateData() async {
    var updateData = await database.update("demo", {
      "title": "PUMADDD",
      "description": "Popular fashion in the world",
      "time": "11/11/2025",
      "favorite": 1,
      "completed": 1,
    }, where: "id = ${1}");
    listData.elementAt(1);
    selectData();
    debugPrint("Updated data: $updateData");
    update();
  }

  void deleteData() async {
    var deleteData = await database.delete("demo", where: "id = ${1}");
    debugPrint("Deleted $deleteData");
    selectData();
    update();
  }
}
