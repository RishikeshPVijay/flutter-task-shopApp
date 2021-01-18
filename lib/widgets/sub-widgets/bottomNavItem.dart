import 'package:flutter/material.dart';

Widget bottomNavItem({
  int id,
  IconData icon,
  String title,
  bool isSelected = false,
  Function selectRoute,
}) {
  final color = isSelected ? Color(0xff471851) : Colors.grey;
  return Expanded(
    child: GestureDetector(
      onTap: () {
        selectRoute(id);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: color,
            size: 28,
          ),
          FittedBox(
            fit: BoxFit.fitWidth,
            child: Text(
              title,
              softWrap: false,
              style: TextStyle(
                color: color,
                fontSize: isSelected ? 12.25 : 12,
                fontWeight: isSelected ? FontWeight.w800 : FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
