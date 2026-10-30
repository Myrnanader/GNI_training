import 'package:flutter/material.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/utils/responsive.dart';
import '../../../widgets/primary_button.dart';

class BottomCartBar extends StatelessWidget {
  final String price;
  const BottomCartBar({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Padding(
        padding: EdgeInsets.fromLTRB(16.s, 12.s, 16.s, 12.s),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(AppStrings.price, style: AppTextStyles.priceLabel),
                SizedBox(height: 4.s),
                Text(price, style: AppTextStyles.priceBold),
              ],
            ),
            const PrimaryButton(text: AppStrings.addToCart),
          ],
        ),
      ),
    );
  }
}