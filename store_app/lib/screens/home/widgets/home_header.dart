import 'package:flutter/material.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../widgets/circle_icon_button.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CircleIconButton(icon: Icons.apps_rounded),
        Text(AppStrings.location, style: AppTextStyles.location),
        const CircleIconButton(
          icon: Icons.shopping_bag_outlined,
          showDot: true,
        ),
      ],
    );
  }
}