import 'package:http/http.dart' as http;

class Connection {
  final String baseUrl = "https://shop-6b4e3-default-rtdb.firebaseio.com";

  Future<void> addProduct(String json) {
    final future = http.post(
      Uri.parse('$baseUrl/products.json'),
      body: json,
    );

    return future
        .catchError((error) => throw "Ocorreu algum erro!")
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
