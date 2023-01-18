// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';

class ScrollPositionFixed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthMax = MediaQuery.of(context).size.width;

    return Positioned(
      top: 65,
      left: 0,
      right: 0,
      bottom: 0,
      child: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 280.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              coverBackground(widthMax),
            ],
          ),
        ),
      ),
    );
  }

  Widget coverBackground(double widthArg) {
    if (widthArg >= 950) return rtrContainer(widthArg / 1.5, updt: false);
    if (widthArg < 900) return rtrContainer(widthArg / 1.2, updt: true);
    return rtrContainer(widthArg / 1.5, updt: false);
  }

  Widget rtrContainer(double widthArg, {updt}) {
    return SizedBox(
      width: widthArg,
      height: 310.0,
      child: Stack(
        children: [
          Container(
            width: widthArg,
            height: 280,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.amber,
            ),
          ),
          Positioned(
            bottom: 0.0,
            left: (updt) ? 0 : 30.0,
            child: Container(
              width: widthArg,
              child: Row(
                mainAxisAlignment:
                    (updt) ? MainAxisAlignment.center : MainAxisAlignment.start,
                children: [
                  Container(
                    width: (updt) ? 120.0 : 130.0,
                    height: (updt) ? 120.0 : 130.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.green,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
