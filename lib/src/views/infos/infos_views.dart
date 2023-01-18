// ignore_for_file: must_be_immutable
import 'package:espace_num/src/features/navigation_function.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'scroll_body_infos.dart';

class InfosPage extends StatelessWidget {
  InfosPage({super.key});

  var nav = NavigationBetween();

  @override
  Widget build(BuildContext context) {
    double widthMax = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          headerInfosPage(widthMax),
          ScrollPositionFixed(),
        ],
      ),
    );
  }

  Widget headerInfosPage(double widthArg) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: SizedBox(
        width: widthArg,
        height: 65.0,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
              child: IconButton(
                onPressed: () => nav.goOut(),
                color: HexColor("474E68"),
                icon: const Icon(
                  Icons.arrow_back_ios_rounded,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
