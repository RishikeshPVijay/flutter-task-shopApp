import 'package:flutter/material.dart';

import '../widgets/featuredItemsWidget.dart';
import '../widgets/catalogueWidget.dart';
import '../widgets/imageSlider.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                child: Column(
                  children: <Widget>[
                    ImageSliderWidget(),
                    SizedBox(
                      height: 10,
                    ),
                    CatalogueWidget(),
                    SizedBox(
                      height: 15,
                    ),
                    FeaturedItemsWidget(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
