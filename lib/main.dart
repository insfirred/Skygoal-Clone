import 'package:flutter/material.dart';

import './screens/HomeScreen.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Lato',
    ),
    home: HomeScreen(),
  ));
}