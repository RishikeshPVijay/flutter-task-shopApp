import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text(
              'Drawer',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            backgroundColor: Colors.transparent,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              height: 110,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff3b2742),
                    Color(0xff855a9a),
                  ],
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.device_unknown),
            title: Text('First'),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.device_unknown),
            title: Text('Second'),
          ),
        ],
      ),
    );
  }
}
