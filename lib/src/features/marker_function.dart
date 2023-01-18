// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages
import 'package:espace_num/src/data/data_cnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:latlong2/latlong.dart';
import 'navigation_function.dart';

final navObject = NavigationBetween();

List<Marker> returnComponent(BuildContext context) {
  List<Marker> markersList = [];

  for (var eltMap in espace_num) {
    markersList.add(viewComp(eltMap));
  }
  return markersList;
}

Marker viewComp(Map data) {
  LatLng? position = LatLng(data['gps']['lat']!, data['gps']['long']!);
  return Marker(
    point: position,
    width: 80,
    height: 80,
    builder: (context) => InkWell(
      child: Column(
        children: [
          Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:
                    (data["e_num"]) ? HexColor("#F0A510") : HexColor("#009FDF"),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(4, 3, 4, 3),
                child: Text(
                  data["ville"],
                  style: TextStyle(
                    color: HexColor("#184056"),
                    fontSize: 11.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Icon(
            Icons.location_on_rounded,
            size: 25.0,
            color: HexColor("#184056"),
          ),
        ],
      ),
      onTap: () {
        print(data["ville"]);
        navObject.goIn();
      },
    ),
  );
}
