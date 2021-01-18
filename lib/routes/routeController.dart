import 'package:flutter/material.dart';
import 'package:task/widgets/appBarSearch.dart';
import 'package:task/widgets/appBarWidget.dart';

import './catalogueRoute.dart';
import './favouriteRoute.dart';
import './homeRoute.dart';
import './profileRoute.dart';

import '../widgets/bottomNavWidget.dart';

class RouteController extends StatefulWidget {
  @override
  _RouteControllerState createState() => _RouteControllerState();
}

class _RouteControllerState extends State<RouteController> {
  PageController _pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  int _index = 0;

  void _pageChanged(int index) {
    setState(() {
      _index = index;
    });
  }

  void _jumpToPage(int index) {
    setState(() {
      _pageController.animateToPage(
        index,
        duration: Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    });
  }

  List _titles = [
    null,
    'Catalogue',
    'Favourite',
    'Profile',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: Container(
          child: Stack(
            children: [
              AppBarWidget(
                height: 115,
                title: _titles[_index],
              ),
              Container(
                margin: EdgeInsets.only(top: 85),
                child: AppBarSearch(
                  show: _index == 0 ? true : false,
                ),
              )
            ],
          ),
        ),
        preferredSize: Size.fromHeight(115),
      ),
      body: PageView(
        // physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: <Widget>[
          HomeRoute(),
          CatalogueRoute(),
          FavouriteRoute(),
          ProfileRoute(),
        ],
        onPageChanged: (index) => _pageChanged(index),
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Text('data'),
            Text('data'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavWidget(_index, _jumpToPage),
    );
  }
}
