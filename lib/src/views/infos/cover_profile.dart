import 'package:flutter/material.dart';

class CoverAndProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthMax = MediaQuery.of(context).size.width;
    return coverBackground(widthMax);
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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                scale: 1.6,
                fit: BoxFit.cover,
                'assets/cover_image.jpg',
              ),
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
                    padding: EdgeInsets.all(3.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image.asset(
                        scale: 1.6,
                        fit: BoxFit.cover,
                        'assets/logo_mairie.jpg',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
