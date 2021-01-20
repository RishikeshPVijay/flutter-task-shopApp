import 'package:flutter/material.dart';

import '../../routes/productDetailsRoute.dart';

class FeaturedListItem extends StatelessWidget {
  final int id, price, discount;
  final String url;
  final bool isFavourite;
  final String title;
  final favOnTap;

  FeaturedListItem({
    this.id,
    this.discount,
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
                if (discount != null)
                  Positioned(
                    top: 16.0,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 15.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xffc24700),
                            Color(0xffed892b),
                          ],
                        ),
                      ),
                      child: Text(
                        '-$discount%',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
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
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: discount != null
                          ? 'Rs.${(price - (price / 100) * discount).round()}  '
                          : 'Rs.$price',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Roboto',
                        color:
                            discount != null ? Color(0xffdb0f00) : Colors.black,
                      ),
                    ),
                    if (discount != null)
                      TextSpan(
                        text: 'Rs.$price',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Roboto',
                          color: Colors.grey,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                  ],
                ),
              ),
            ),
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
