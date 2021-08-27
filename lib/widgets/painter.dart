import 'package:flutter/material.dart';
import '../constants.dart';

class Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..color = orangeTone;

    canvas.drawCircle(
      Offset(
        size.width / 2,
        -size.height * 1.5,
      ),
      size.width,
      paint,
    );
  }

  @override
  bool shouldRepaint(Painter oldDelegate) => false;
}