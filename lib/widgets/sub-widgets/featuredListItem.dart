import 'package:flutter/material.dart';

import '../../routes/productDetailsRoute.dart';

class FeaturedListItem extends StatelessWidget {
  final int id;
  final String url;
  final bool isFavourite;
  final String title;
  final int price;
  final favOnTap;

  FeaturedListItem({
    this.id,
    this.url,
    this.isFavourite,
    this.price,
    this.title,
    this.favOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      // color: Colors.red,
      margin: const EdgeInsets.only(
        top: 40,
        right: 10,
        left: 10,
      ),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            ProductDetailsRoute.routeName,
            arguments: id,
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 170,
                  child: Card(
                    elevation: 0.5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: const EdgeInsets.all(0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        url,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -10,
                  right: 10,
                  child: GestureDetector(
                    onTap: () {
                      favOnTap(id);
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(
                        isFavourite ? Icons.favorite : Icons.favorite_border,
                        color: isFavourite ? Color(0xffdfb156) : Colors.black,
                        size: 25,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: 10,
                  child: Container(
                    child: Row(
                      children: <Widget>[
                        ratingIcons(),
                        ratingIcons(),
                        ratingIcons(),
                        ratingIcons(),
                        ratingIcons(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              // color: Colors.red,
              width: 200,
              height: 49,
              padding: const EdgeInsets.all(5),
              child: Text(
                title,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                'Rs.$price',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Roboto',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget ratingIcons() {
  return Icon(
    Icons.star,
    size: 19,
    color: Color(0xffdfb156),
  );
}
