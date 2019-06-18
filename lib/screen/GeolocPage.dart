import 'package:flutter/material.dart';
import 'package:flutter_test_app/service/Location/LocationService.dart';
import 'package:flutter_test_app/service/Location/UserLocation.dart';
import '../nav/Drawer.dart';
import 'package:provider/provider.dart';


class GeolocPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserLocation>(
      builder: (context) => LocationService().locationStream,
      child:
          new Scaffold(
            drawer: new DrawerOnly(),   // New Line
            appBar: new AppBar(title: new Text("Geoloc Page"),),
            body: HomeView(),
          ),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userLocation = Provider.of<UserLocation>(context);
    return Center(
      child: Text(
          'Location: Lat${userLocation?.latitude} Long${userLocation?.longitude} Speed${userLocation?.speed}'),
    );
  }
}