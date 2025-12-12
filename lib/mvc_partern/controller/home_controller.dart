import 'package:get/get.dart';

class HomeController extends GetxController {
  String title = "Home Controller";
  String name = "Satya";
  int index = 0;
  void increaseIndex() {
    index++;
    update();
  }
}
