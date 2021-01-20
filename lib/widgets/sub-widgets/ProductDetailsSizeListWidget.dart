import 'package:flutter/material.dart';

import '../../models/productModel.dart';

class ProductDetailsSizeListWidget extends StatelessWidget {
  final Product product;
  final selectSize;
  final int selectedSizeIndex, i;
  final List colors;

  ProductDetailsSizeListWidget({
    this.product,
    this.i,
    this.colors,
    this.selectSize,
    this.selectedSizeIndex,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectSize(i);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: selectedSizeIndex == i ? Color(0xffdfb156) : Colors.grey,
              width: selectedSizeIndex == i ? 1.5 : 1.0,
            ),
          ),
          width: 57,
          child: Center(
            child: Text(product.sizes[i]),
          ),
        ),
      ),
    );
  }
}
