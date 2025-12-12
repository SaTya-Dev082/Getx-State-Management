import 'package:get/get.dart';
import 'package:learning_getx/mvc_partern/controller/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // Get.put(HomeController());
    Get.lazyPut(() => HomeController());
  }
}
