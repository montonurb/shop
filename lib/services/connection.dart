import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:project_firebase/model/product.dart';

class Connection {
  final String baseUrl = "https://shop-6b4e3-default-rtdb.firebaseio.com";

  Future<void> addProduct(String json) {
    final future = http.post(
      Uri.parse('$baseUrl/products.son'),
      body: json,
    );

    return future
        .catchError((error) => print("Ocorreu algum erro!"))
        .then<void>((response) {});
  }

  // Future<List<Product>> searchProducts() async {
  //   List<Product> products;

  //   http.get(
  //     Uri.parse(baseUrl),
  //   );

  //   return products;
  // }
}
