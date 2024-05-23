import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class map3 extends StatefulWidget {
  const map3({Key? key}) : super(key: key);

  @override
  _map3State createState() => _map3State();
}

class _map3State extends State<map3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App de Maps'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(center: LatLng(-35.15525798991841, -64.94345341431065), zoom: 3),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.thunderforest.com/mobile-atlas/{z}/{x}/{y}.png?apikey=34760bc027494f3aaae6fd071b7ac862',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-35.15525798991841, -64.94345341431065),
                    builder: (ctx) =>
                        Container(
                          child: Icon(Icons.location_on, color: Colors.red),
                        ),
                  ),

                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}