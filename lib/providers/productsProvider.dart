import 'package:flutter/widgets.dart';
import '../models/productModel.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 1,
      imageUrl:
          'https://rukminim1.flixcart.com/image/880/1056/kgcl7680/kids-dress/9/h/x/9-10-years-gmd004-star-blue-mirrow-trade-original-imafwhakkhxvs9hy.jpeg?q=50',
      title: 'Lorem ipsum dolor sit amet consectetur adipiscing',
      price: 1750,
      isFavourite: false,
      rating: 5,
    ),
    Product(
      id: 2,
      imageUrl:
          'https://rukminim1.flixcart.com/image/880/1056/kingqkw0-0/sweatshirt/i/v/n/m-bnvwtmhdfulsweat-st9-blive-original-imafye3ga9pzmjtu.jpeg?q=50',
      title: 'Sed ut mi feugiat fringilla est non elementum metus',
      price: 800,
      isFavourite: false,
      rating: 5,
    ),
    Product(
      id: 3,
      imageUrl:
          'https://rukminim1.flixcart.com/image/880/1056/k5pn6vk0/sweater/e/f/b/xl-41452xlteal-wildcraft-original-imafzbw5gfuagzwu.jpeg',
      title: 'Fusce dignissim tellus quam nulla eleifend',
      price: 500,
      isFavourite: false,
      rating: 5,
    ),
    Product(
      id: 4,
      imageUrl:
          'https://rukminim1.flixcart.com/image/880/1056/kh0vonk0-0/t-shirt/l/j/9/s-abn-try-this-original-imafx4kf5uwegptd.jpeg?q=50',
      title: 'Interdum et malesuada fames ac ante ipsum',
      price: 1199,
      isFavourite: false,
      rating: 5,
    )
  ];

  List<Product> get items {
    return [..._items];
  }

  Product findById(int id) {
    return _items.firstWhere((product) => product.id == id);
  }
}
