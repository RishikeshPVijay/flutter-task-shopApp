import 'package:flutter/material.dart';

import '../../models/productModel.dart';

class ProductDetailsPriceWidget extends StatelessWidget {
  const ProductDetailsPriceWidget({
    @required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: product.discount != null
                  ? 'Rs.${(product.price - (product.price / 100) * product.discount).round()}  '
                  : 'Rs.${product.price}',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
                fontFamily: 'Roboto',
                color:
                    product.discount != null ? Color(0xffdb0f00) : Colors.black,
              ),
            ),
            if (product.discount != null)
              TextSpan(
                text: 'Rs.${product.price}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
