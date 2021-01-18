import 'package:flutter/material.dart';

import './sub-widgets/catalogueHeader.dart';
import './sub-widgets/catalogueListItem.dart';

class CatalogueWidget extends StatelessWidget {
  final List<Map<String, String>> _items = [
    {
      'url':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKoUrMZcc09NDN78BKVMx60vgfakMBYc8pIg&usqp=CAU',
      'title': 'Women\'s Fashion',
    },
    {
      'url':
          'https://img.theweek.in/content/dam/week/webworld/feature/lifestyle/2017/august/men-fashion.jpg',
      'title': 'Men\'s Fashion',
    },
    {
      'url':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrrcW7JJcagSFiUnoibkK5bKPXhoas5fqfrQ&usqp=CAU',
      'title': 'Phones',
    },
    {
      'url': 'https://cdn.mos.cms.futurecdn.net/mnzNfoMcmVXme8vxENcyjm.jpg',
      'title': 'Computer Accessories',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 145,
      child: GridTile(
        header: CatalogueHeader(),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: _items.length,
          itemBuilder: (ctx, i) => CatalogueListItem(
            url: _items[i]['url'],
            title: _items[i]['title'],
          ),
        ),
      ),
    );
  }
}
