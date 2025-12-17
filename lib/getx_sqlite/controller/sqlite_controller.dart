import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:learning_getx/getx_sqlite/model/demo_model.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SQLController extends GetxController {
  late Database database;
  List<DemoModel> listData = [];
  // bool updateTask=false;  // use this if use one library(insert/update)

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
        selectData();
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

  Future<void> selectData() async {
    listData = [];
    var data = await database.query("demo");
    for (var i in data) {
      listData.add(DemoModel.fromJson(i));
    }
    update();
  }

  void insertData({
    required String title,
    String? description,
    required String time,
    required String favorite,
    required String completed,
  }) async {
    var insertData = await database.insert("demo", {
      "title": title,
      "description": description,
      "time": time,
      "favorite": int.parse(favorite),
      "completed": int.parse(completed),
    });
    selectData();
    debugPrint("$insertData is Inserted!");
    update();
  }

  void updateData({
    required int id,
    required String title,
    String? description,
    required String time,
    required String favorite,
    required String completed,
  }) async {
    var updateData = await database.update("demo", {
      "title": title,
      "description": description,
      "time": time,
      "favorite": int.parse(favorite),
      "completed": int.parse(completed),
    }, where: "id = $id");
    listData.elementAt(1);
    selectData();
    debugPrint("Updated data: $updateData");
    update();
  }

  void deleteData({required int id}) async {
    var deleteData = await database.delete("demo", where: "id = $id");
    debugPrint("Deleted $deleteData");
    selectData();
    update();
  }
}
