import 'package:flutter/material.dart';
import 'dart:math' as math;

class MyRocket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Image.asset(
        'lib/images/rocket_final.heic',
      ),
    );
  }
}