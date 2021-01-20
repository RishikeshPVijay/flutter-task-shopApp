import 'package:flutter/material.dart';

import '../routes/dummyRoute.dart';
import './sub-widgets/bottomNavItem.dart';

class BottomNavWidget extends StatefulWidget {
  final int index;
  final Function pageChanged;
  BottomNavWidget(
    this.index,
    this.pageChanged,
  );
  @override
  _BottomNavWidgetState createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  void clear() {
    _items.forEach((e) => e['isSelected'] = false);
  }

  void _selectRoute(id) {
    widget.pageChanged(id);
  }

  final _items = [
    {
      'icon': Icons.home,
      'title': 'Home',
      'isSelected': false,
    },
    {
      'icon': Icons.apps,
      'title': 'Catelogue',
      'isSelected': false,
    },
    {
      'icon': Icons.favorite_border,
      'title': 'Favourite',
      'isSelected': false,
    },
    {
      'icon': Icons.person_outline,
      'title': 'Profile',
      'isSelected': false,
    }
  ];

  List<Widget> get _list {
    List<Widget> list = [];
    for (int i = 0; i < _items.length; i++) {
      clear();
      if (i == widget.index) {
        _items[i]['isSelected'] = true;
      }
      list.add(
        bottomNavItem(
          icon: _items[i]['icon'],
          title: _items[i]['title'],
          id: i,
          isSelected: _items[i]['isSelected'],
          selectRoute: _selectRoute,
        ),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      margin: const EdgeInsets.all(0),
      child: Container(
        height: 70,
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 5),
              width: MediaQuery.of(context).size.width * 0.70,
              child: Row(
                children: _list,
              ),
            ),
            Positioned(
              right: 0,
              top: -18,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xff3b2742),
                      Color(0xff855a9a),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                ),
                padding: const EdgeInsets.all(10),
                height: 62,
                width: MediaQuery.of(context).size.width * 0.3,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(DummyRoute.routeName);
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 34,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Rs.150',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '2 items',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
