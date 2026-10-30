import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../core/utils/responsive.dart';

class GalleryThumbnail extends StatelessWidget {
  final String image;
  final bool selected;
  final VoidCallback? onTap;

  const GalleryThumbnail({
    super.key,
    required this.image,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 56.s,
        height: 56.s,
        margin: EdgeInsets.only(right: 12.s),
        padding: EdgeInsets.all(6.s),
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(14.s),
          border: Border.all(
            color: selected ? AppColors.primary : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Image.asset(image, fit: BoxFit.contain),
      ),
    );
  }
}