import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/productsProvider.dart';

class ProductDetailBottomNavWidget extends StatelessWidget {
  final int id;
  ProductDetailBottomNavWidget(this.id);
  @override
  Widget build(BuildContext context) {
    var productData = Provider.of<Products>(context);
    var product = productData.findById(id);

    return Card(
      margin: const EdgeInsets.all(0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 15.0,
        ),
        // color: Colors.red,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                size: 30,
                color: Colors.grey,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            RaisedButton(
              onPressed: () {},
              child: Text(
                'Add To Cart',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              color: Color(0xfff8ba4e),
              elevation: 1,
              padding: const EdgeInsets.symmetric(
                horizontal: 60.0,
                vertical: 15.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                product.isFavourite ? Icons.favorite : Icons.favorite_outline,
                size: 30,
                color: product.isFavourite ? Color(0xffdfb156) : Colors.grey,
              ),
              onPressed: () {
                productData.toggleFavorite(id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
