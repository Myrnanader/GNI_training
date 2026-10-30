import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../core/utils/responsive.dart';

class AddIconButton extends StatelessWidget {
  final VoidCallback? onTap;
  const AddIconButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 36.s,
        height: 36.s,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14.s),
            bottomRight: Radius.circular(16.s),
          ),
        ),
        child: Icon(Icons.add, color: Colors.white, size: 20.s),
      ),
    );
  }
}