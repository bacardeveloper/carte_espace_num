// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:espace_num/src/features/download_function.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

Widget btnWidget() {
  return InkWell(
    child: Container(
      width: 180.0,
      height: 35.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: HexColor("#F0A510"),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Télacrger carte PDF",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(
              Icons.download_rounded,
              color: Colors.black,
            )
          ],
        ),
      ),
    ),
    onTap: () {
      webDownload.download(
          url:
              "https://the.earth.li/~sgtatham/putty/latest/w64/putty-64bit-0.78-installer.msi");
    },
  );
}
