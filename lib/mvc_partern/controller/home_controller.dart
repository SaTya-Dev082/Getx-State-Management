import 'package:get/get.dart';

class HomeController extends GetxController {
  String title = "Home Controller";

  int index = 0;
  void increaseIndex() {
    index++;
    update();
  }

  String name = "";
  void displayName() {
    name = "Satya";
    update();
  }

  @override
  void onInit() {
    /// When your controller is open
    print("On Init");
    super.onInit();
  }

  @override
  void onReady() {
    /// When the controller is create
    print("On Ready");
    super.onReady();
  }

  @override
  void onClose() {
    /// When we close controller
    print("On Close");
    super.onClose();
  }
}
