import 'dart:ui';

import 'package:flutter/material.dart';

class CatalogueListItem extends StatelessWidget {
  final String url;
  final String title;

  CatalogueListItem({
    this.url,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, top: 40),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 110,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                url,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 0.9,
              sigmaY: 0.9,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
