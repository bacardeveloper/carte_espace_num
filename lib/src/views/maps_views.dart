// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, depend_on_referenced_packages, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:latlong2/latlong.dart';

class MapsView extends StatelessWidget {
  LatLng latLong = LatLng(-12.81, 45.15);
  @override
  Widget build(BuildContext context) {
    double widthMax = MediaQuery.of(context).size.width;
    double heightMax = MediaQuery.of(context).size.height;
    if (widthMax > 400) {
      return Positioned(
        top: 0,
        child: SizedBox(
          height: (heightMax - 200),
          width: widthMax,
          child: FlutterMap(
            options: MapOptions(
              center: latLong,
              zoom: 11.3,
              maxZoom: 20.0,
            ),
            nonRotatedChildren: [
              AttributionWidget.defaultWidget(
                source: 'OpenStreetMap contributors',
                onSourceTapped: null,
              ),
            ],
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(-12.688180, 45.074523),
                    width: 80,
                    height: 80,
                    builder: (context) => Column(
                      children: [
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: HexColor("#0A2647"),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(4, 3, 4, 3),
                              child: Text(
                                "Hamjago",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.location_on_rounded,
                          size: 25.0,
                          color: HexColor("#0A2647"),
                        )
                      ],
                    ),
                  ),
                  Marker(
                    point: LatLng(-12.703513, 45.122882),
                    width: 80,
                    height: 80,
                    builder: (context) => Column(
                      children: [
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: HexColor("#0A2647"),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(4, 3, 4, 3),
                              child: Text(
                                "Bandraboua",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.location_on_rounded,
                          size: 25.0,
                          color: HexColor("#0A2647"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    } else {
      return Positioned(
        top: 0,
        child: SizedBox(
          height: (heightMax - 200),
          width: widthMax,
          child: FlutterMap(
            options: MapOptions(
              center: latLong,
              zoom: 10.3,
              maxZoom: 20.0,
            ),
            nonRotatedChildren: [
              AttributionWidget.defaultWidget(
                source: 'OpenStreetMap contributors',
                onSourceTapped: null,
              ),
            ],
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(-12.688180, 45.074523),
                    width: 80,
                    height: 80,
                    builder: (context) => Icon(
                      Icons.location_city_rounded,
                      size: 25.0,
                      color: Colors.red,
                    ),
                  ),
                  Marker(
                    point: LatLng(-12.703513, 45.122882),
                    width: 80,
                    height: 80,
                    builder: (context) => Column(
                      children: [
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: HexColor("#0A2647"),
                            ),
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(4, 3, 4, 3),
                              child: Text(
                                "Bandraboua",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Icon(
                          Icons.location_on_rounded,
                          size: 25.0,
                          color: HexColor("#0A2647"),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
  }
}
