import 'package:flutter/material.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/utils/responsive.dart';
import '../../../data/dummy_shoes.dart';
import '../../../widgets/section_header.dart';
import '../../../widgets/shoe_card.dart';
import '../../details/details_screen.dart';

class PopularShoesSection extends StatelessWidget {
  const PopularShoesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SectionHeader(title: AppStrings.popularShoes),
        SizedBox(height: 14.s),
        Row(
          children: [
            for (int i = 0; i < popularShoes.length; i++) ...[
              if (i != 0) SizedBox(width: 16.s),
              Expanded(
                child: ShoeCard(
                  shoe: popularShoes[i],
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => DetailsScreen(shoe: popularShoes[i]),
                    ),
                  ),
                ),
              ),
            ],
          ],
        ),
      ],
    );
  }
}