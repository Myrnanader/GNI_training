import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/utils/responsive.dart';
import '../../../data/dummy_shoes.dart';
import '../../../widgets/price_text.dart';
import '../../../widgets/section_header.dart';
import '../../../widgets/tag_label.dart';
import '../../details/details_screen.dart';

class NewArrivalsSection extends StatelessWidget {
  const NewArrivalsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final shoe = newArrival;
    return Column(
      children: [
        const SectionHeader(title: AppStrings.newArrivals),
        SizedBox(height: 14.s),
        GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => DetailsScreen(shoe: shoe)),
          ),
          child: Container(
            height: 120.s,
            padding: EdgeInsets.symmetric(horizontal: 16.s, vertical: 14.s),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(14.s),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TagLabel(shoe.tag),
                      SizedBox(height: 6.s),
                      Text(shoe.name,
                          style: AppTextStyles.cardName
                              .copyWith(fontSize: 18.s)),
                      SizedBox(height: 10.s),
                      PriceText(shoe.price),
                    ],
                  ),
                ),
                Image.asset(shoe.image, width: 120.s, fit: BoxFit.contain),
              ],
            ),
          ),
        ),
      ],
    );
  }
}