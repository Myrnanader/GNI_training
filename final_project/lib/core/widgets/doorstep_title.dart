import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import '../theme/app_colors.dart';
import '../theme/app_text_styles.dart';

class DoorstepTitle extends StatelessWidget {
  const DoorstepTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: AppTextStyles.headingLarge,
        children: [
          const TextSpan(text: '${AppConstants.titleFirstLine}\n'),
          const TextSpan(text: AppConstants.titleSecondLine),
          TextSpan(
            text: AppConstants.titleHighlight,
            style: AppTextStyles.headingLarge.copyWith(
              color: AppColors.secondary,
            ),
          ),
        ],
      ),
      textAlign: TextAlign.center,
    );
  }
}
