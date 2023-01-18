// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class TemoinsCouleur extends StatelessWidget {
  double widthSize = 220.0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: widthSize,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 25.0,
                height: 25.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: HexColor("#F0A510"),
                ),
              ),
              Text(
                "Espace numérique",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 5,
        ),
        SizedBox(
          width: widthSize,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 25.0,
                height: 25.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: HexColor("#009FDF"),
                ),
              ),
              Text(
                "Maison numérique",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
