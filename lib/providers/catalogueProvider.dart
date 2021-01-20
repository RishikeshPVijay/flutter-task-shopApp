import 'package:flutter/material.dart';

class CatalogueProvider with ChangeNotifier {
  List<Map<String, String>> _items = [
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

  List<Map<String, String>> get items {
    return [..._items];
  }
}
