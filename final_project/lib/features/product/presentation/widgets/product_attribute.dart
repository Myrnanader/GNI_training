import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/spacing_widgets.dart';

class ProductAttribute extends StatelessWidget {
  final String icon;
  final String value;

  const ProductAttribute({
    super.key,
    required this.icon,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          icon,
          width: AppDimensions.attributeIconSize.w,
          height: AppDimensions.attributeIconSize.w,
          fit: BoxFit.contain,
        ),
        const WidthSpace(AppDimensions.spacing4),
        Text(value, style: AppTextStyles.bodyMedium),
      ],
    );
  }
}
