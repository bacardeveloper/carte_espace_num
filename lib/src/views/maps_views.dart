// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, depend_on_referenced_packages, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables
import 'package:espace_num/src/features/marker_function.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapsView extends StatelessWidget {
  LatLng latLong = LatLng(-12.81, 45.15);
  @override
  Widget build(BuildContext context) {
    double widthMax = MediaQuery.of(context).size.width;
    double heightMax = MediaQuery.of(context).size.height;

    if (widthMax > 450) {
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
                markers: returnComponent(context),
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
              zoom: 10.5,
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
                markers: returnComponent(context),
              ),
            ],
          ),
        ),
      );
    }
  }
}
