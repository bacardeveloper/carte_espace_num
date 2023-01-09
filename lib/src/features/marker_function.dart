// ignore_for_file: prefer_const_constructors, depend_on_referenced_packages
import 'package:espace_num/src/data/data_cnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:latlong2/latlong.dart';

List returnComponent(BuildContext context) {
  List markersList = [];
  for (var mapData in espace_num) {
    markersList.add(viewComp(mapData));
  }
  return markersList;
}

Marker viewComp(Map data) {
  return Marker(
    point: LatLng(data["gps"]["lat"], data["gps"]["long"]),
    width: 80,
    height: 80,
    builder: (context) => InkWell(
      child: Column(
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
                  data["ville"],
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
          ),
        ],
      ),
    ),
  );
}
