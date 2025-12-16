import 'package:get/get.dart';
import 'package:learning_getx/getx_sqlite/controller/sqlite_controller.dart';

class TaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SQLController());
  }
}
