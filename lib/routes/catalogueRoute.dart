import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:task/providers/catalogueProvider.dart';

class CatalogueRoute extends StatelessWidget {
  Text buildText(String str) {
    return Text(
      str,
      style: TextStyle(
        color: Color(0xff666666),
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
    );
  }

  void showModal(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
      ),
      context: context,
      builder: (ctx) => Container(
        height: 80 + (9 * 30.0),
        padding: const EdgeInsets.symmetric(
          vertical: 10.0,
          horizontal: 15.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 5,
                  width: MediaQuery.of(context).size.width * 0.16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.grey[350],
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Women\'s Fashion',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Roboto',
                    fontSize: 22,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildText('Clothing'),
                  buildText('Shops'),
                  buildText('Jewelry'),
                  buildText('Watches'),
                  buildText('Handbags'),
                  buildText('Accessories'),
                  buildText('Mens\'s Fashion'),
                  buildText('Girl\'s Fashion'),
                  buildText('Boy\'s Fashion'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final catalogueData = Provider.of<CatalogueProvider>(context);
    final _items = catalogueData.items;

    return Container(
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (ctx, i) => Card(
          margin: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 15,
          ),
          child: InkWell(
            onTap: () {
              showModal(context);
            },
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
      ),
    );
  }
}
