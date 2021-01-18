import 'package:flutter/foundation.dart';

class Product {
  final String imageUrl, title;
  final int id, price, rating;
  bool isFavourite;

  Product({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.price,
    @required this.rating,
    this.isFavourite = false,
  });
}
