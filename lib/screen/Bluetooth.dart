import 'package:flutter/material.dart';
import '../nav/Drawer.dart';

class BluetoothPage extends StatelessWidget {


  @override
  Widget build(BuildContext ctxt) {
    return new Scaffold(
      drawer: new DrawerOnly(),   // New Line
      appBar: new AppBar(title: new Text("Bluetooth Page"),),
      body: new Text("I belongs to Bluetooth Page"),
    );
  }
}