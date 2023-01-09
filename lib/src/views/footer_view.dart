// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors
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

  Widget titleAndTexte(double heightArg) {
    double spacerArg = 7.0;
    double fctRtrSize() {
      if (heightArg > 900) {
        return 27.0;
      } else {
        return 21;
      }
    }

    double fctRtrSizeTexte() {
      if (heightArg > 900) {
        return 18.0;
      } else {
        return 15;
      }
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Bienvenu sur la carte des espaces nulérique de Mayotte",
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
      ],
    );
  }
}
