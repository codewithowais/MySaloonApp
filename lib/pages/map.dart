import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:beautysalon/pages/service_location.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps Demo',
      home: MapSample(),
    );
  }
}

class MapSample extends StatefulWidget {
  @override
  State<MapSample> createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();
  TextEditingController _searchSourchController = TextEditingController();
  TextEditingController _searchDestinationController = TextEditingController();
  Set<Marker> _markers = Set<Marker>();
  Set<Polygon> _polygons = Set<Polygon>();
  List<LatLng> polygonLatlngs = <LatLng>[];

  int _polygonIdCounter = 1;
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  static final Marker _kGooglePlexMarker = Marker(
    markerId: MarkerId('_kGooglePlexMarker'),
    infoWindow: InfoWindow(title: 'Google Plex'),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(37.42796133580664, -122.085749655962),
  );
  void _setMarker(MarkerId name, LatLng point) {
    setState(() {
      _markers.remove(name);
      _markers.add(
        Marker(
          markerId: name,
          position: point,
        ),
      );
    });
  }

  void _setPolygon() {
    final String polygonIdVal = 'polygon_$_polygonIdCounter';
    // _polygonIdCounter++;
    setState(() {
      _polygons.clear();
      _polygons.add(
        Polygon(
          polygonId: PolygonId(polygonIdVal),
          points: polygonLatlngs,
          strokeWidth: 2,
          fillColor: Colors.transparent,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google map'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _searchSourchController,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(hintText: 'Search  by city'),
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              IconButton(
                onPressed: () async {
                  var place = await LocationService()
                      .getPlace(_searchSourchController.text);
                  _goToPlace(place, 'source');
                },
                icon: Icon(Icons.search),
              )
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _searchDestinationController,
                  textCapitalization: TextCapitalization.words,
                  decoration: InputDecoration(hintText: 'Search  by city'),
                  onChanged: (value) {
                    print(value);
                  },
                ),
              ),
              IconButton(
                onPressed: () async {
                  var place = await LocationService()
                      .getPlace(_searchDestinationController.text);
                  _goToPlace(place, 'destination');
                },
                icon: Icon(Icons.search),
              )
            ],
          ),
          Expanded(
            child: GoogleMap(
              myLocationEnabled: true,
              compassEnabled: true,
              tiltGesturesEnabled: false,
              mapType: MapType.normal,
              markers: _markers,
              polygons: _polygons,
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller.complete(controller);
              },
            ),
          ),
        ],
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: _goToTheLake,
      //   label: Text('To the lake!'),
      //   icon: Icon(Icons.directions_boat),
      // ),
    );
  }

  Future<void> _goToPlace(Map<String, dynamic> place, String type) async {
    final double lat = place['geometry']['location']['lat'];
    final double lng = place['geometry']['location']['lng'];
    final GoogleMapController controller = await _controller.future;
    // print(controller.animateCamera(CameraPosition(target: LatLng(lat,lng));
    setState(() {
      if (type == 'source') {
        // polygonLatlngs.clear();
        polygonLatlngs.add(LatLng(lat, lng));
      } else {
        polygonLatlngs.add(LatLng(lat, lng));
      }
    });
    controller.moveCamera(CameraUpdate.newCameraPosition(
      // _kLake
      CameraPosition(target: LatLng(lat, lng), zoom: 12),
    ));
    _setPolygon();
    _setMarker(MarkerId(type), LatLng(lat, lng));

    //   ).then((value) {
    //     print('value ');
    //   }).catchError((err){
    //     print(err);
    //   });
  }
// Future<void> _goToTheLake() async {
//   final GoogleMapController controller = await _controller.future;
//   controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
// }
}