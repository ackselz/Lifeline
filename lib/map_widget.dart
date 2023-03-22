import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;

class MapWidget extends StatefulWidget {
  const MapWidget({super.key});

  @override
  State<MapWidget> createState() => _MapWidgetState();
}

class _MapWidgetState extends State<MapWidget> {
  late GoogleMapController mapController;
  final LatLng _center = const LatLng(1.35250165199, 103.687462807);
  late String _mapStyle;
  late Future<Set<Marker>> _markers;

  final FirebaseDatabase database = FirebaseDatabase.instance;
  late final DatabaseReference dbRef  = database.ref().child('emergency'); // emergency data reference

  late StreamSubscription _subscription;  // live listen to real time database for emergencies

  @override
  void initState() {
    super.initState();

    rootBundle.loadString('assets/map_style.txt').then((string) {
      _mapStyle = string;
    });

    // loads emergency markers from firebase
    _markers = loadMarkers();
  }

  // load emergency marker data
  Future<Set<Marker>> loadMarkers() async {
    final snapshot = await dbRef.get();

    Set<Marker> markers = {};

    Map<dynamic, dynamic> emergencyData = snapshot.value as Map<dynamic, dynamic>;

    emergencyData.forEach((key, value) {
      Map<dynamic, dynamic> details = value as Map<dynamic, dynamic>;

      double lat = details['latitude'] as double;
      double lng = details['longitude'] as double;

      var marker = Marker(
        markerId: MarkerId(details['patient'] as String),
        position: LatLng(lat, lng),
        onTap: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: const Text(
                'Emergency Near You',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.red),
              ),
              content: const Text(
                  'Someone requested for emergency help near you (500 m).\n\nWould you like to respond?'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'No'),
                  child: const Text(
                    'No',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context, 'Yes'),
                  child: const Text(
                    'Yes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )),
      );
      markers.add(marker);
    });

    return markers;
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    mapController.setMapStyle(_mapStyle);
  }

  @override
  void dispose() {
    // stop async calls to database
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _markers,
      builder: (context, snapshot) {
        if(snapshot.hasData){
          Set<Marker> markers = snapshot.data!;

          // Set up a listener to listen for changes in the "markers" node
          _subscription = dbRef.onValue.listen((event) {
            setState(() {
              _markers = loadMarkers();
            });
          });
          return GoogleMap(
            myLocationEnabled: true,
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 14.0,
            ),
            markers: markers,
          );
        }
        else{
          // Display a loading spinner
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }
    );
  }
}
