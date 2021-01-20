import 'package:flutter/widgets.dart';
import '../models/productModel.dart';

class Products with ChangeNotifier {
  List<Product> _items = [
    Product(
      id: 1,
      imageUrl: {
        'Blue': [
          'https://rukminim1.flixcart.com/image/880/1056/kgcl7680/kids-dress/9/h/x/9-10-years-gmd004-star-blue-mirrow-trade-original-imafwhakkhxvs9hy.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/kgcl7680/kids-dress/9/h/x/3-4-years-gmd004-star-blue-mirrow-trade-original-imafwhakyzhyysj3.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/kgcl7680/kids-dress/9/h/x/3-4-years-gmd004-star-blue-mirrow-trade-original-imafwhakxgsfhvyg.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/kgcl7680/kids-dress/g/k/n/7-8-years-gmd004-star-blue-mirrow-trade-original-imafwhakw9r7aaf7.jpeg?q=50',
        ],
        'Red Wine': [
          'https://rukminim1.flixcart.com/image/880/1056/kgcl7680/kids-dress/t/v/c/11-12-years-gmd004-star-red-mirrow-trade-original-imafwhaksm2fgvzz.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/kgcl7680/kids-dress/t/v/c/7-8-years-gmd004-star-red-mirrow-trade-original-imafwhakjqc2myaz.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/kgcl7680/kids-dress/t/v/c/3-4-years-gmd004-star-red-mirrow-trade-original-imafwhaku7zwbc7a.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/kgcl7680/kids-dress/t/v/c/13-14-years-gmd004-star-red-mirrow-trade-original-imafwhaknexjrq44.jpeg?q=50',
        ]
      },
      title: 'Girls Maxi/Full Length Party Dress',
      price: 1750,
      discount: 50,
      sizes: [
        'XXS',
        'XS',
        'S',
        'M',
        'L',
        'XL',
      ],
      isFavourite: false,
      rating: 5,
    ),
    Product(
      id: 2,
      imageUrl: {
        'Black': [
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/4/c/z/l-be-fariless-02-rockhard-original-imafnkdksjhcchxm.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/4/c/z/xl-be-fariless-02-rockhard-original-imafnkdkkeyaqkyw.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/4/c/z/xl-be-fariless-02-rockhard-original-imafnkdkefqgdqyt.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/4/c/z/l-be-fariless-02-rockhard-original-imafnkdkeg6j3yqq.jpeg?q=50',
        ],
        'Dark Grey': [
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/x/f/g/m-be-fariless-06-rockhard-original-imafnt5sxruu7fh7.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/x/f/g/m-be-fariless-06-rockhard-original-imafnt5ssqygmzzr.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/x/f/g/xl-be-fariless-06-rockhard-original-imafnt5sqnnfwbpu.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/x/f/g/xl-be-fariless-06-rockhard-original-imafnt5sxzzhhcg3.jpeg?q=50',
        ],
        'Green': [
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/3/m/p/xl-be-fariless-03-rockhard-original-imafnkdkahendvz6.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/3/m/p/l-be-fariless-03-rockhard-original-imafnkdkgeedvgdz.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/3/m/p/s-be-fariless-03-rockhard-original-imafnkdktzbxjegd.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/3/m/p/s-be-fariless-03-rockhard-original-imafnt5snxh4ehuh.jpeg?q=50'
        ],
        'White': [
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/z/a/5/xl-be-fariless-01-rockhard-original-imafnkdkmb9q5bgu.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/z/a/5/xl-be-fariless-01-rockhard-original-imafnkdkct3jh3eb.jpeg?q=50',
        ],
        'Maroon': [
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/4/h/z/xl-be-fariless-04-rockhard-original-imafnkdkbamxdxfc.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/4/h/z/m-be-fariless-04-rockhard-original-imafnt5sa7qbvznv.jpeg?q=50',
        ],
        'Mustard': [
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/d/g/z/s-be-fariless-05-rockhard-original-imafnkdkdk95jh6x.jpeg?q=50',
          'https://rukminim1.flixcart.com/image/880/1056/k51cpe80/sweatshirt/d/g/z/s-be-fariless-05-rockhard-original-imafnt5sazfm2grg.jpeg?q=50',
        ]
      },
      title: 'Full Sleeve Printed Men Sweatshirt',
      price: 800,
      sizes: [
        'S',
        'M',
        'L',
        'XL',
      ],
      isFavourite: false,
      rating: 5,
    ),
    Product(
      id: 3,
      imageUrl: {
        'color': [
          'https://rukminim1.flixcart.com/image/880/1056/k5pn6vk0/sweater/e/f/b/xl-41452xlteal-wildcraft-original-imafzbw5gfuagzwu.jpeg',
        ],
      },
      title: 'Fusce dignissim tellus quam nulla eleifend',
      price: 500,
      sizes: [
        'XXS',
        'XS',
        'S',
        'M',
        'L',
        'XL',
      ],
      isFavourite: false,
      rating: 5,
    ),
    Product(
      id: 4,
      imageUrl: {
        'color': [
          'https://rukminim1.flixcart.com/image/880/1056/kh0vonk0-0/t-shirt/l/j/9/s-abn-try-this-original-imafx4kf5uwegptd.jpeg?q=50',
        ],
      },
      title: 'Interdum et malesuada fames ac ante ipsum',
      price: 1199,
      sizes: [
        'XXS',
        'XS',
        'S',
        'M',
        'L',
        'XL',
      ],
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

  void toggleFavorite(int id) {
    var pro = _items.firstWhere((item) => item.id == id);
    pro.isFavourite = !pro.isFavourite;
    notifyListeners();
  }
}
