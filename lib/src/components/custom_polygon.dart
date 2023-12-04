
import 'dart:math';

import 'package:flutter/material.dart';


class PolygonShapeClipper extends CustomClipper<Path> {
  final int sides;
  final double cornerRadius;

  PolygonShapeClipper(this.sides, this.cornerRadius);

  @override
  Path getClip(Size size) {
    final path = Path();
    final angle = (2 * 3.1415926535897932) / sides;

    for (int i = 0; i < sides; i++) {
      final x = size.width / 2 + size.width / 2 * cos(angle * i);
      final y = size.height / 2 + size.height / 2 * sin(angle * i);

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }

      // Add rounded corners
      final nextX = size.width / 2 + size.width / 2 * cos(angle * (i + 1));
      final nextY = size.height / 2 + size.height / 2 * sin(angle * (i + 1));
      final centerX = (x + nextX) / 2;
      final centerY = (y + nextY) / 2;
      final controlX = x + cornerRadius * cos(angle * i + angle / 2);
      final controlY = y + cornerRadius * sin(angle * i + angle / 2);

      path.quadraticBezierTo(controlX, controlY, centerX, centerY);
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}