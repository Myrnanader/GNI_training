import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/spacing_widgets.dart';

class QuantitySelector extends StatelessWidget {
  final int quantity;
  final ValueChanged<int> onChanged;

  const QuantitySelector({
    super.key,
    required this.quantity,
    required this.onChanged,
  });

  Widget _buildButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    final radius = BorderRadius.circular(AppDimensions.radiusSmall.r);

    return Ink(
      width: AppDimensions.quantityButtonSize.w,
      height: AppDimensions.quantityButtonSize.w,
      decoration: BoxDecoration(
        gradient: AppColors.primaryGradient,
        borderRadius: radius,
        boxShadow: [
          BoxShadow(
            color: AppColors.secondary.withValues(alpha: 0.25),
            blurRadius: 4.r,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: InkWell(
        onTap: onPressed,
        borderRadius: radius,
        child: Icon(
          icon,
          color: AppColors.white,
          size: AppDimensions.iconSmall.sp,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildButton(
          icon: Icons.remove,
          onPressed: () {
            if (quantity > 1) onChanged(quantity - 1);
          },
        ),
        const WidthSpace(AppDimensions.spacing16),
        Text(
          quantity.toString(),
          style: AppTextStyles.bodyMedium,
        ),
        const WidthSpace(AppDimensions.spacing16),
        _buildButton(
          icon: Icons.add,
          onPressed: () => onChanged(quantity + 1),
        ),
      ],
    );
  }
}
