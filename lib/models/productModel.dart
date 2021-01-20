import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class Product {
  final String title;
  final Map<String, List<String>> imageUrl;
  final List<String> sizes;
  final int id, price, rating;
  bool isFavourite;

  Product({
    @required this.id,
    @required this.title,
    @required this.imageUrl,
    @required this.price,
    @required this.rating,
    @required this.sizes,
    this.isFavourite = false,
  });
}
