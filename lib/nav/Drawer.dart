import 'package:flutter/material.dart';
import '../screen/Bluetooth.dart';
import '../screen/MapsPage.dart';
import '../screen/HomePage.dart';

class DrawerOnly extends StatelessWidget {
  @override
  Widget build (BuildContext ctxt) {
    return new Drawer(
        child: new ListView(
          children: <Widget>[
            new DrawerHeader(
              child: new Text("DRAWER HEADER.."),
              decoration: new BoxDecoration(
                  color: Colors.orange
              ),
            ),
            new ListTile(
              title: new Text("HomePage"),
              onTap: () {
                Navigator.pop(ctxt);
                Navigator.push(ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new HomePage()));
              },
            ),
            new ListTile(
              title: new Text("Bluetooth"),
              onTap: () {
                Navigator.pop(ctxt);
                Navigator.push(ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new BluetoothPage()));
              },
            ),
            new ListTile(
              title: new Text("Maps"),
              onTap: () {
                Navigator.pop(ctxt);
                Navigator.push(ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new MapsPage()));
              },
            ),
          ],
        )
    );
  }
}