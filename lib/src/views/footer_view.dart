// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FooterStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthMax = MediaQuery.of(context).size.width;
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Container(
        width: widthMax,
        height: 200.0,
        color: HexColor("#0A2647"),
      ),
    );
  }
}
