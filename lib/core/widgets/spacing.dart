import 'package:flutter/material.dart';

class Spacing {
  Spacing._();

  static const double zero = 0;
  static const double xxs = 2;
  static const double xs = 4;
  static const double sm = 8;
  static const double sl = 12;
  static const double md = 16;
  static const double lg = 24;
  static const double xl = 32;
  static const double xxl = 40;
  static const double xxxl = 48;
}

// Extensión directa sobre cualquier double o constante de AppSpacing
extension SpacingExtension on double {
  Widget get v => SizedBox(height: this);
  Widget get h => SizedBox(width: this);
}
