import 'package:flutter/material.dart';
import '../../../core/constants/app_strings.dart';
import '../../../core/theme/app_text_styles.dart';
import '../../../core/utils/responsive.dart';
import '../../../models/shoe_model.dart';
import '../../../widgets/price_text.dart';
import '../../../widgets/tag_label.dart';
import 'gallery_section.dart';

class ShoeInfoCard extends StatelessWidget {
  final ShoeModel shoe;
  final String selectedImage;
  final ValueChanged<String> onGallerySelect;

  const ShoeInfoCard({
    super.key,
    required this.shoe,
    required this.selectedImage,
    required this.onGallerySelect,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TagLabel(shoe.tag),
        SizedBox(height: 6.s),
        Text(shoe.name, style: AppTextStyles.bigName),
        SizedBox(height: 10.s),
        PriceText(shoe.price, style: AppTextStyles.bigPrice),
        SizedBox(height: 10.s),
        Text(shoe.description, style: AppTextStyles.description),
        SizedBox(height: 18.s),
        Text(AppStrings.gallery, style: AppTextStyles.sectionTitle
            .copyWith(fontSize: 17.s)),
        SizedBox(height: 12.s),
        GallerySection(
          images: shoe.gallery,
          selected: selectedImage,
          onSelect: onGallerySelect,
        ),
        SizedBox(height: 16.s),
      ],
    );
  }
}