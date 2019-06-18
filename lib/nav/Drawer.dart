import 'package:flutter/material.dart';
import '../screen/Bluetooth.dart';
import '../screen/MapsPage.dart';
import '../screen/HomePage.dart';
import '../screen/GeolocPage.dart';

class DrawerOnly extends StatelessWidget {
  @override
  Widget build (BuildContext context) {
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
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new HomePage()));
               // Navigator.pop(context);
              },
            ),
            new ListTile(
              title: new Text("Bluetooth"),
              onTap: () {
               //Navigator.pop(context);
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new BluetoothPage()));
              },
            ),
            new ListTile(
              title: new Text("Maps"),
              onTap: () {
               // Navigator.pop(context);
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new MapsPage()));
              },
            ),
            new ListTile(
              title: new Text("Geoloc"),
              onTap: () {
                //Navigator.pop(context);
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => new GeolocPage()));
              },
            ),
          ],
        )
    );
  }
}