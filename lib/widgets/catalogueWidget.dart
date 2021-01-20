import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/catalogueProvider.dart';

import './sub-widgets/catalogueHeader.dart';
import './sub-widgets/catalogueListItem.dart';

class CatalogueWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final catalogueData = Provider.of<CatalogueProvider>(context);
    final _items = catalogueData.items;

    return Container(
      height: 145,
      child: GridTile(
        header: CatalogueHeader(),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: min(4, _items.length),
          itemBuilder: (ctx, i) => CatalogueListItem(
            url: _items[i]['url'],
            title: _items[i]['title'],
          ),
        ),
      ),
    );
  }
}
