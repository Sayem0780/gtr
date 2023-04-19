class Product {
  final int id;
  final String name;
  final String code;
  final double price;

  Product({
    required this.id,
    required this.name,
    required this.code,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['Id'],
      name: json['Name'],
      code: json['Code'],
      price: json['Price'].toDouble(),
    );
  }
}