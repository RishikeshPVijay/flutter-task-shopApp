import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/productsProvider.dart';

import './routes/productDetailsRoute.dart';
import './routes/routeController.dart';
import './routes/dummyRoute.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Products(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Raleway',
          primarySwatch: Colors.blue,
          canvasColor: Color(0xfff1f1f1),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          '/': (ctx) => RouteController(),
          DummyRoute.routeName: (ctx) => DummyRoute(),
          ProductDetailsRoute.routeName: (ctx) => ProductDetailsRoute(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
