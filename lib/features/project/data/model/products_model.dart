class ProductsModel {
  final String title;
  final num price;
  final String description;
  final String image;
  final String category;

  ProductsModel({
    required this.title,
    required this.price,
    required this.description,
    required this.image,
    required this.category,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      title: json['title'],
      price: json['price'],
      description: json['description'],
      image: json['image'],
      category: json['category'],
    );
  }
}
