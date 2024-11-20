import 'package:flutter/material.dart';

class CurvedRectLight extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0, 0);

    path.quadraticBezierTo(size.width / 2, size.height - 300, size.width, 0);

    path.quadraticBezierTo(size.width, size.height, size.width, size.height);

    // Right curve (mirrored to create parallel arc)
    //path.quadraticBezierTo(size.width / 2, size.height - 40, size.width, 0);

    //path.lineTo(size.width, size.height);

    path.quadraticBezierTo(size.width / 2, size.height, 0, size.height);

    path.quadraticBezierTo(0, size.height, 0, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
