import 'package:get/get.dart';
import 'package:learning_getx/mvc_partern/get_connects/model/product_api_model.dart';

class ProductService extends GetConnect {
  Future<List<Product>> getProducts() async {
    final response = await get("https://fakestoreapi.com/products");
    print(response.body);
    if (response.statusCode == 200) {
      List data = response.body; // ✅ List not Map
      print(data);
      return data.map((e) => Product.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
