import 'package:get/get_connect/connect.dart';

class TestGetconnect extends GetConnect {
  Future<Response> getProducts() {
    return get('https://fakestoreapi.com/products');
  }
}
