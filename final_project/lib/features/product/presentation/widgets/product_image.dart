import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_dimensions.dart';

class ProductImage extends StatelessWidget {
  final String image;
  final double width;

  const ProductImage({
    super.key,
    required this.image,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimensions.productImageHeight.h,
      child: OverflowBox(
        maxWidth: width.w,
        maxHeight: double.infinity,
        child: Image.asset(
          image,
          width: width.w,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
