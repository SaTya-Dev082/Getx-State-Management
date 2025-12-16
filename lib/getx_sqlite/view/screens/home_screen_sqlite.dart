import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/getx_sqlite/controller/sqlite_controller.dart';
import 'package:learning_getx/getx_sqlite/view/screens/insert_screen.dart';

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
            (controller) => ListView.builder(
              itemCount: controller.listData.length,
              itemBuilder: (context, index) {
                final product = controller.listData[index];
                return ListTile(
                  title: Text(
                    product.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    product.description,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  leading: Text(
                    product.id.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                );
              },
            ),
      ),
    );
  }
}
