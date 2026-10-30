import 'package:flutter/material.dart';
import '../core/constants/app_colors.dart';
import '../core/constants/app_sizes.dart';
import '../core/theme/app_text_styles.dart';
import '../core/utils/responsive.dart';
import '../models/shoe_model.dart';
import 'add_icon_button.dart';
import 'price_text.dart';
import 'tag_label.dart';

class ShoeCard extends StatelessWidget {
  final ShoeModel shoe;
  final VoidCallback? onTap;

  const ShoeCard({super.key, required this.shoe, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 200.s,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(AppSizes.cardRadius),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.all(12.s),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 90.s,
                    width: double.infinity,
                    child: Image.asset(shoe.image, fit: BoxFit.contain),
                  ),
                  const Spacer(),
                  TagLabel(shoe.tag),
                  SizedBox(height: 4.s),
                  Text(shoe.name, style: AppTextStyles.cardName),
                  SizedBox(height: 6.s),
                  PriceText(shoe.price),
                ],
              ),
            ),
            const Positioned(right: 0, bottom: 0, child: AddIconButton()),
          ],
        ),
      ),
    );
  }
}