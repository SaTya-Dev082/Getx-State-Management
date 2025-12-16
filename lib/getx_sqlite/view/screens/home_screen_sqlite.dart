import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/getx_sqlite/controller/sqlite_controller.dart';
import 'package:learning_getx/getx_sqlite/view/screens/insert_screen.dart';

class HomeScreenSqlite extends StatelessWidget {
  HomeScreenSqlite({super.key});

  final SQLController controller1 = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SQLite"),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: controller1.deleteAppDatabase,
                icon: Icon(Icons.logout),
              ),
              IconButton(
                onPressed: () {
                  Get.to(InsertScreen());
                },
                icon: Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
      body: GetBuilder<SQLController>(
        builder:
            (controller) => RefreshIndicator(
              onRefresh: () async {
                await controller.selectData();
              },
              child: ListView.builder(
                itemCount: controller.listData.length,
                itemBuilder: (context, index) {
                  final product = controller.listData[index];
                  return ListTile(
                    leading: Text(
                      product.id.toString(),
                      style: TextStyle(color: Colors.black),
                    ),
                    title: Text(
                      product.title,
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                      product.description,
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        controller.updateData(id: product.id);
                      },
                      icon: Icon(Icons.edit, color: Colors.orange),
                    ),
                  );

                  /*Card(
                    child: Column(
                      children: [
                        Text(
                          controller.listData[index].title,
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          controller.listData[index].description,
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                 );
                    */
                },
              ),
            ),
      ),
    );
  }
}
