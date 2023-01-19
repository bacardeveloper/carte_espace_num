// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'cover_profile.dart';

class ScrollPositionFixed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              CoverAndProfile(),
            ],
          ),
        ),
      ),
    );
  }
}
