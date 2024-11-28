class ProductDetails {
  final int id;
  final String title;
  final String description;
  final String price;
  final String image;
  final List<String> reviews;

  ProductDetails({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.image,
    required this.reviews,
  });

  factory ProductDetails.fromJson(Map<String, dynamic> json) {
    var reviewsList = json['reviews'] as List<dynamic>;
    List<String> reviews = reviewsList.map((review) => review.toString()).toList();

    return ProductDetails(
      id: json['id'],
      title: json['name'],
      description: json['description'],
      price: json['price'],
      image: json['image'],
      reviews: reviews,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'price': price,
      'image': image,
      'reviews': reviews,
    };
  }
}
