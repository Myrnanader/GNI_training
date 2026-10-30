import 'package:flutter/material.dart';

/// التصميم الأصلي 375 x 812
class R {
  static const double designWidth = 375;
  static const double designHeight = 812;
  static double scale = 1;

  static void init(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    scale = (w / designWidth).clamp(0.8, 1.3);
  }
}

extension SizeX on num {
  /// يحول القيمة من مقاس التصميم لمقاس الشاشة الحالية
  double get s => this * R.scale;
}