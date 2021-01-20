import 'package:flutter/material.dart';

import './sub-widgets/ProductDetailsColorsListWidget.dart';
import './sub-widgets/ProductDetailsPriceWidget.dart';
import './sub-widgets/ProductDetailsSizeListWidget.dart';
import './sub-widgets/ProductDetailsReviewRowWidget.dart';
import './sub-widgets/productDetailsImageSliderWidget.dart';
import '../models/productModel.dart';

class ProductDetailsRouteBody extends StatefulWidget {
  final Product product;
  ProductDetailsRouteBody(this.product);
  @override
  _ProductDetailsRouteBodyState createState() =>
      _ProductDetailsRouteBodyState();
}

class _ProductDetailsRouteBodyState extends State<ProductDetailsRouteBody> {
  List<String> _colors;
  var _selectedColorIndex = 0;
  var _selectedSizeIndex = 0;

  void _selectColor(int index) {
    setState(() {
      _selectedColorIndex = index;
    });
  }

  void _selectSize(int index) {
    setState(() {
      _selectedSizeIndex = index;
    });
  }

  @override
  void initState() {
    _colors = widget.product.imageUrl.keys.toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 5.0),
      child: Column(
        children: <Widget>[
          ProductDetailsImageSliderWidget(
            product: widget.product,
            colors: _colors,
            selectedColorIndex: _selectedColorIndex,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductDetailsReviewRowWidget(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  child: Text(
                    widget.product.title,
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                ProductDetailsPriceWidget(product: widget.product),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Colors',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 60,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.product.imageUrl.length,
                          itemBuilder: (ctx, i) =>
                              ProductDetailsColorsListWidget(
                            colors: _colors,
                            i: i,
                            product: widget.product,
                            selectColor: _selectColor,
                            selectedColorIndex: _selectedColorIndex,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          'Sizes',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 57,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.product.sizes.length,
                          itemBuilder: (ctx, i) => ProductDetailsSizeListWidget(
                            colors: _colors,
                            i: i,
                            product: widget.product,
                            selectSize: _selectSize,
                            selectedSizeIndex: _selectedSizeIndex,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
