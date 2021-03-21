class Product {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  Product(this.userId, this.id, this.title, this.completed);
  factory Product.fromMap(Map<String, dynamic> json) {
    return Product(
      json['userId'],
      json['id'],
      json['title'],
      json['complete'],
    );
  }
}
