import 'package:flutter/material.dart';

class CatalogueRoute extends StatelessWidget {
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
    },
    {
      'url':
          'https://blog.hubspot.com/hs-fs/hubfs/The%2013%20Best%20Smart%20Home%20Devices%20%26%20Systems%20of%202019-5.png?width=435&name=The%2013%20Best%20Smart%20Home%20Devices%20%26%20Systems%20of%202019-5.png',
      'title': 'Smart Home',
    },
    {
      'url':
          'https://cdn.whatmomslove.com/wp-content/uploads/2019/02/FEATURED-IMAGE-Spring-Crafts.png',
      'title': 'Arts & Crafts',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (ctx, i) => Card(
          margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 15,
          ),
          child: Container(
            height: 90,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    _items[i]['title'],
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  height: 90,
                  width: 90,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                    child: Image.network(
                      _items[i]['url'],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
