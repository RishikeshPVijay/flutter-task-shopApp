import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

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
          GFCarousel(
            height: 350,
            viewportFraction: 1.0,
            pagination: true,
            pagerSize: 8,
            autoPlay: false,
            initialPage: 0,
            enableInfiniteScroll: false,
            items: widget.product.imageUrl[_colors[_selectedColorIndex]]
                .map(
                  (e) => Container(
                    child: Image.network(
                      e,
                      fit: BoxFit.fill,
                    ),
                  ),
                )
                .toList(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                ),
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
                Container(
                  child: Text(
                    'Rs.${widget.product.price}',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
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
                          itemBuilder: (ctx, i) => Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: GestureDetector(
                              onTap: () {
                                _selectColor(i);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14.0),
                                  border: Border.all(
                                    color: _selectedColorIndex == i
                                        ? Color(0xffdfb156)
                                        : Colors.transparent,
                                    width: 2.5,
                                  ),
                                ),
                                width: 57,
                                child: Tooltip(
                                  message: _colors[i],
                                  preferBelow: false,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.network(
                                      widget.product.imageUrl[_colors[i]][0],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
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
                          itemBuilder: (ctx, i) => GestureDetector(
                            onTap: () {
                              _selectSize(i);
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  border: Border.all(
                                    color: _selectedSizeIndex == i
                                        ? Color(0xffdfb156)
                                        : Colors.grey,
                                    width: _selectedSizeIndex == i ? 1.5 : 1.0,
                                  ),
                                ),
                                width: 57,
                                child: Center(
                                  child: Text(widget.product.sizes[i]),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
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
