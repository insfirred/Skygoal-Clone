import 'package:flutter/material.dart';

Widget BottomNavBar() {
  return Container(
    color: Color(0xff0E3C6E),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              color: Colors.white,
            ),
            Text(
              'Search',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.save, color: Colors.grey),
            Text('Saved', style: TextStyle(color: Colors.grey)),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.compass_calibration, color: Colors.grey),
            Text('Saved', style: TextStyle(color: Colors.grey)),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_circle, color: Colors.grey),
            Text('Account', style: TextStyle(color: Colors.grey)),
          ],
        ),
      ],
    ),
  );
}
