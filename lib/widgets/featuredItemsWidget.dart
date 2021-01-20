import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/productsProvider.dart';

import './sub-widgets/featuredListItem.dart';

class FeaturedItemsWidget extends StatefulWidget {
  @override
  _FeaturedItemsWidgetState createState() => _FeaturedItemsWidgetState();
}

class _FeaturedItemsWidgetState extends State<FeaturedItemsWidget> {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;

    void favOnTap(int id) {
      productsData.toggleFavorite(id);
    }

    return Container(
      // color: Colors.green[100],
      height: 300,
      child: GridTile(
        header: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          // color: Colors.black,
          child: Text(
            'Featured',
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: products.length,
          itemBuilder: (ctx, i) => FeaturedListItem(
            id: products[i].id,
            url: products[i].imageUrl.values.toList()[0][0],
            title: products[i].title,
            price: products[i].price,
            isFavourite: products[i].isFavourite,
            favOnTap: favOnTap,
          ),
        ),
      ),
    );
  }
}
