import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/getx_sqlite/controller/sqlite_controller.dart';
import 'package:learning_getx/getx_sqlite/view/screens/detail_screen.dart';
import 'package:learning_getx/getx_sqlite/view/screens/insert_screen.dart';
import 'package:learning_getx/getx_sqlite/view/screens/update_screen.dart';

class HomeScreenSqlite extends StatelessWidget {
  HomeScreenSqlite({super.key});

  final SQLController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SQLite"),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: controller.deleteAppDatabase,
                icon: Icon(Icons.logout),
              ),
              Center(
                child: IconButton(
                  onPressed: () {
                    Get.to(InsertScreen());
                  },
                  icon: Icon(Icons.add, color: Colors.blue, size: 30),
                ),
              ),
            ],
          ),
        ],
      ),
      body: GetBuilder<SQLController>(
        builder:
            (controller) => RefreshIndicator(
              onRefresh: () => controller.selectData(),
              child: ListView.builder(
                itemCount: controller.listData.length,
                itemBuilder: (context, index) {
                  final demoModel = controller.listData[index];
                  return ListTile(
                    onTap: () {
                      Get.to(DetailScreen(demoModel: demoModel));
                    },
                    title: Text(
                      demoModel.title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      demoModel.description,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Text(
                      demoModel.id.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.to(UpdateScreen(demoModel: demoModel));
                          },
                          icon: Icon(Icons.edit),
                        ),
                        IconButton(
                          onPressed: () {
                            controller.deleteData(id: demoModel.id);
                          },
                          icon: Icon(Icons.delete, color: Colors.red),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
      ),
    );
  }
}
