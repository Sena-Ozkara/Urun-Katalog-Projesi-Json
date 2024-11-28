class Product {
  final int id;
  final String title;
  final String price;
  final String image;
  final String author;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.author,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['name'],
      price: json['price'],
      image: json['image'],
      author: json['author'],
    );
  }




  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'price': price,
      'image': image,
      'author': author,
    };
  }
}
