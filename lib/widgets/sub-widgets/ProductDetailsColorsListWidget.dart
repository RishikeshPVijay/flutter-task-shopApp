import 'package:flutter/material.dart';

import '../../models/productModel.dart';

class ProductDetailsColorsListWidget extends StatelessWidget {
  final Product product;
  final selectColor;
  final int selectedColorIndex, i;
  final List colors;

  ProductDetailsColorsListWidget({
    this.product,
    this.i,
    this.colors,
    this.selectColor,
    this.selectedColorIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: () {
          selectColor(i);
        },
        child: Container(
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            border: Border.all(
              color: selectedColorIndex == i
                  ? Color(0xffdfb156)
                  : Colors.transparent,
              width: 2.5,
            ),
          ),
          width: 57,
          child: Tooltip(
            message: colors[i],
            preferBelow: false,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                product.imageUrl[colors[i]][0],
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
