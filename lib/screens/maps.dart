import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main()

{

  GoogleMapController.init();
  final GoogleMapOverlayController controller =
  GoogleMapOverlayController.fromSize(width: 900.0, height: 450.0);
  final Widget mapWidget = GoogleMapOverlay(controller: controller);

  runApp(MaterialApp(
    home: new Scaffold(
      appBar: AppBar(title: const Text('Google Maps demo')),
      body: MapsDemo(mapWidget, controller.mapController),
    ),
    navigatorObservers: <NavigatorObserver>[controller.overlayController],
  ));
}

class MapsDemo extends StatelessWidget {
  MapsDemo(this.mapWidget, this.controller);

  final Widget mapWidget;
  final GoogleMapController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Center(child: mapWidget),
          RaisedButton(
            child: const Text('Codevida'),
            onPressed: () {
              controller.animateCamera(CameraUpdate.newCameraPosition(
                const CameraPosition(
                  bearing: 320.0,
                  target: LatLng(-23.936719, -46.362294),
                  tilt: 10.0,
                  zoom: 19.0,
                ),
              ));
            },
          ),
        ],
      ),
    );
  }
}