class Product {
  String id;
  String name;
  String description;
  String price;
  String imageUrl;
  bool isFavorite;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
    this.isFavorite = false,
  });

  void toggleFavorite() {
    isFavorite = !isFavorite;
  }

  fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      price: json['price'] as String,
      imageUrl: json['imageUrl'] as String,
      isFavorite: json['isFavorite'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    data['imageUrl'] = imageUrl;
    data['isFavorite'] = isFavorite;
    return data;
  }
}
