import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class PriceText extends StatelessWidget {
  final double price;
  final TextStyle? style;

  const PriceText({
    super.key,
    required this.price,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    final textStyle = style ?? AppTextStyles.bodyMedium;

    return Text.rich(
      TextSpan(
        style: textStyle,
        children: [
          TextSpan(
            text: '\$',
            style: textStyle.copyWith(
              color: AppColors.secondary,
              fontWeight: FontWeight.w600,
            ),
          ),
          TextSpan(text: price.toStringAsFixed(2)),
        ],
      ),
    );
  }
}
