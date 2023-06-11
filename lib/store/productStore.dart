import 'dart:convert';

import 'package:project_firebase/model/product.dart';
import 'package:project_firebase/services/connection.dart';

class ProductStore {
  final connection = Connection();
  late List<Product> products;

  Future addProduct(
      String name, String description, String price, String imageUrl) {
    final json = jsonEncode({
      "name": name,
      "description": description,
      "price": price,
      "imageUrl": imageUrl,
    });

    return connection.addProduct(json);
  }

  // Future<List<Product>> searchProducts() async {
  //   products = await connection.searchProducts();
  //   return List<Product>();
  // }
}
