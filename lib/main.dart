import 'package:flutter/material.dart';
import 'screen/HomePage.dart';


void main(){
  //debugPaintSizeEnabled=true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new HomePage(),
    );
  }
}

