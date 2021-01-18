import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  final double height;
  final String title;

  AppBarWidget({
    this.height,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: title != null
            ? Text(
                title,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              )
            : RichText(
                text: TextSpan(
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'My',
                      style: TextStyle(
                        color: Color(0xffeeb571),
                      ),
                    ),
                    TextSpan(text: 'Shop'),
                  ],
                ),
              ),
        centerTitle: true,
        flexibleSpace: Container(
          height: height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff3b2742),
                Color(0xff855a9a),
              ],
            ),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications_none,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
