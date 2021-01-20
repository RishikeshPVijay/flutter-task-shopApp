import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/productDetailsRouteBody.dart';
import '../widgets/productDetailBottomNavWidget.dart';
import '../providers/productsProvider.dart';

class ProductDetailsRoute extends StatelessWidget {
  static const routeName = '/product-details';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as int;
    final product =
        Provider.of<Products>(context, listen: false).findById(productId);

    return Scaffold(
      body: SingleChildScrollView(
        child: ProductDetailsRouteBody(product),
      ),
      bottomNavigationBar: ProductDetailBottomNavWidget(product.id),
    );
  }
}
