import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/getx_sqlite/controller/sqlite_controller.dart';
import 'package:learning_getx/getx_sqlite/model/demo_model.dart';
import 'package:learning_getx/getx_sqlite/view/screens/home_screen_sqlite.dart';

class UpdateScreen extends StatefulWidget {
  UpdateScreen({super.key, required this.demoModel});
  final DemoModel demoModel;

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  final SQLController controller = Get.find();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final timeController = TextEditingController();
  final favoriteController = TextEditingController();
  final completedController = TextEditingController();
  bool loading = false;
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    titleController.text = widget.demoModel.title;
    descriptionController.text = widget.demoModel.description;
    timeController.text = widget.demoModel.time;
    favoriteController.text = widget.demoModel.favorite.toString();
    completedController.text = widget.demoModel.completed.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: Text("Create new Category"), centerTitle: true),
      body: GetBuilder<SQLController>(
        builder:
            (controller) => SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          TextFormField(
                            controller: titleController,
                            decoration: InputDecoration(
                              labelText: "Title",
                              hintText: "Title",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Please enter Title";
                              }
                              return null;
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            maxLines: 3,
                            controller: descriptionController,
                            decoration: InputDecoration(
                              labelText: "Description",
                              hintText: "Description",
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: timeController,
                            decoration: InputDecoration(
                              labelText: "Time",
                              hintText: "Time",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter Time";
                              }
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: favoriteController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "0/1",
                              hintText: "Favorite",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter favorite";
                              }
                            },
                          ),
                          SizedBox(height: 10),
                          TextFormField(
                            controller: completedController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: "0/1",
                              hintText: "Completed",
                              border: OutlineInputBorder(),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Enter completed";
                              }
                            },
                          ),
                          SizedBox(height: 30),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                    foregroundColor: WidgetStatePropertyAll(
                                      Colors.white,
                                    ),
                                    backgroundColor: WidgetStatePropertyAll(
                                      Colors.blue,
                                    ),
                                  ),
                                  onPressed: () {
                                    if (_formKey.currentState!.validate()) {
                                      controller.updateData(
                                        id: widget.demoModel.id,
                                        title: titleController.text,
                                        description: descriptionController.text,
                                        time: timeController.text,
                                        favorite: favoriteController.text,
                                        completed: completedController.text,
                                      );
                                      Get.offAll(HomeScreenSqlite());
                                      Get.snackbar(
                                        "Success",
                                        "Update data successfully",
                                        backgroundColor: Color(0xFFC27CDAFF),
                                      );
                                    }
                                  },
                                  child: Text(
                                    "Save",
                                    style: TextStyle(fontSize: 22),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
