// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:espace_num/src/views/btn_dowload.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FooterStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthMax = MediaQuery.of(context).size.width;
    double heightMax = MediaQuery.of(context).size.height;
    return Positioned(
      bottom: 0.0,
      left: 0.0,
      right: 0.0,
      child: Container(
        width: widthMax,
        height: 200.0,
        color: Colors.white,
        child: titleAndTexte(heightMax),
      ),
    );
  }

/*
Container(
        width: widthMax,
        height: 200.0,
        color: Colors.white,
        child: titleAndTexte(heightMax),
      )
      */
  Widget titleAndTexte(double heightArg) {
    double spacerArg = 7.0;
    double fctRtrSize() {
      if (heightArg > 900) {
        return 27.0;
      } else {
        return 18.5;
      }
    }

    double fctRtrSizeTexte() {
      if (heightArg > 900) {
        return 18.0;
      } else {
        return 15;
      }
    }

    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: heightArg),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: spacerArg,
            ),
            Text(
              "Bienvenu sur la carte des espaces numériques de Mayotte",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: fctRtrSize(),
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: spacerArg,
            ),
            Center(
              child: Text(
                """Cette carte récense les éspaces et les maisons numériques de Mayotte. En cliquant sur les noms des
          villes des informations complémentaires s'afficheront ici.""",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: fctRtrSizeTexte(),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: spacerArg,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: HexColor("#184056"),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(6, 3, 6, 3),
                child: Text(
                  "Outil créer par Bacar Darwin",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 5.0,
            ),
            btnWidget(),
            Container(
              height: 5.0,
            ),
            temoinsCouleurs(),
          ],
        ),
      ),
    );
  }

  Widget temoinsCouleurs() {
    double widthSize = 220.0;
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
