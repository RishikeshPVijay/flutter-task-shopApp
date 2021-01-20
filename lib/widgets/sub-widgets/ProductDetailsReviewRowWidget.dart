import 'package:flutter/material.dart';

class ProductDetailsReviewRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: Row(
            children: [
              ratingIcons(),
              ratingIcons(),
              ratingIcons(),
              ratingIcons(),
              ratingIcons(),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            '8 reviews',
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: Text(
            'In Stock',
            textAlign: TextAlign.end,
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        )
      ],
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
