import 'package:flutter/material.dart';

class CustomBeveledRectangleBorder extends ShapeBorder {
  final double borderRadius;

  CustomBeveledRectangleBorder({required this.borderRadius});

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return getOuterPath(rect.deflate(borderRadius), textDirection: textDirection);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final path = Path();

    path.moveTo(rect.left + borderRadius, rect.top);
    path.lineTo(rect.right - borderRadius, rect.top);
    path.quadraticBezierTo(rect.right, rect.top, rect.right, rect.top + borderRadius);
    path.lineTo(rect.right, rect.bottom - borderRadius);
    path.quadraticBezierTo(rect.right, rect.bottom, rect.right - borderRadius, rect.bottom);
    path.lineTo(rect.left + borderRadius, rect.bottom);
    path.quadraticBezierTo(rect.left, rect.bottom, rect.left, rect.bottom - borderRadius);
    path.lineTo(rect.left, rect.top + borderRadius);
    path.quadraticBezierTo(rect.left, rect.top, rect.left + borderRadius, rect.top);

    return path;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) {
    return CustomBeveledRectangleBorder(borderRadius: borderRadius * t);
  }
}