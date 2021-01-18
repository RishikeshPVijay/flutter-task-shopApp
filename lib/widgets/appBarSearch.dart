import 'package:flutter/material.dart';

class AppBarSearch extends StatelessWidget {
  final bool show;
  AppBarSearch({this.show = false});
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: Duration(milliseconds: 500),
      child: show
          ? Container(
              key: UniqueKey(),
              margin: EdgeInsets.only(left: 25, right: 25),
              child: Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(0),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintText: 'What are you looking for?',
                  ),
                  style: TextStyle(
                    color: Color(0xff595757),
                  ),
                ),
              ),
            )
          : Container(
              key: UniqueKey(),
            ),
    );
  }
}
