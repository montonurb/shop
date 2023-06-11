class Product {
  String id;
  String name;
  String description;
  String price;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
  });

  fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;

    return data;
  }
}
