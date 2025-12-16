import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_getx/mvc_partern/get_connects/model/product_api_model.dart';
import '../controller/product_get_controller.dart';

class HomeProductView extends StatelessWidget {
  HomeProductView({super.key});
  final controller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => ListView.builder(
          itemCount: controller.products.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(controller.products[index].id.toString()),
              subtitle: Text('\$Price'),
            );
          },
        ),
      ),
    );
  }
}
