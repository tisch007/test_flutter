import 'package:flutter/material.dart';
import '../nav/Drawer.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapsPage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}








class _MyAppState extends State<MapsPage> {

  GoogleMapController mapController;


  Location location = new Location();

  _animateToUser() async {
    print('ici');

    var pos = await location.getLocation();


    mapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(pos.latitude, pos.longitude),
          zoom: 17.0,
        )
    )
    );
  }


  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    print('la');
    _animateToUser();
    setState(() {
      mapController = controller;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: new DrawerOnly(),
        appBar: AppBar(
          title: Text('Maps'),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          myLocationEnabled: true,
          compassEnabled: true,

        ),
      ),
    );
  }
}