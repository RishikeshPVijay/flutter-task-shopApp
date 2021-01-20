import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

import '../../models/productModel.dart';

class ProductDetailsImageSliderWidget extends StatelessWidget {
  const ProductDetailsImageSliderWidget({
    Key key,
    @required this.product,
    @required List<String> colors,
    @required int selectedColorIndex,
  })  : _colors = colors,
        _selectedColorIndex = selectedColorIndex,
        super(key: key);

  final Product product;
  final List<String> _colors;
  final int _selectedColorIndex;

  @override
  Widget build(BuildContext context) {
    return GFCarousel(
      height: 350,
      viewportFraction: 1.0,
      pagination: true,
      pagerSize: 8,
      autoPlay: false,
      initialPage: 0,
      enableInfiniteScroll: false,
      items: product.imageUrl[_colors[_selectedColorIndex]]
          .map(
            (e) => Container(
              child: Image.network(
                e,
                fit: BoxFit.fill,
              ),
            ),
          )
          .toList(),
    );
  }
}
