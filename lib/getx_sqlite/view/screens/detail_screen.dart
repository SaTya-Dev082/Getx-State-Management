import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/getx_sqlite/controller/sqlite_controller.dart';
import 'package:learning_getx/getx_sqlite/model/demo_model.dart';
import 'package:learning_getx/getx_sqlite/view/screens/insert_screen.dart';
import 'package:learning_getx/getx_sqlite/view/screens/update_screen.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({super.key, required this.demoModel});
  final DemoModel demoModel;

  final SQLController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SQLController>(
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(title: Text(demoModel.title)),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                demoModel.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                demoModel.description,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                demoModel.time,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                demoModel.favorite.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                demoModel.completed.toString(),
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        );
      },
    );
  }
}
