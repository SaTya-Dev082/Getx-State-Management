import 'package:get/get.dart';
import 'package:learning_getx/mvc_partern/get_connects/model/product_api_model.dart';
import 'package:learning_getx/mvc_partern/get_connects/services/product_service.dart';

class ProductController extends GetxController {
  var products = <Product>[].obs;
  final ProductService service = ProductService();

  Future<void> fetchProducts() async {
    try {
      products.value = await service.getProducts();
    } catch (e) {
      print(e);
    }
  }
}
