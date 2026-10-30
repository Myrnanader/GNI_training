import 'package:flutter/material.dart';
import '../core/theme/app_text_styles.dart';

class PriceText extends StatelessWidget {
  final String price;
  final TextStyle? style;
  const PriceText(this.price, {super.key, this.style});

  @override
  Widget build(BuildContext context) =>
      Text(price, style: style ?? AppTextStyles.cardPrice);
}