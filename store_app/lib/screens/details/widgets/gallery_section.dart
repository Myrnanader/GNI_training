import 'package:flutter/material.dart';
import '../../../widgets/gallery_thumbnail.dart';

class GallerySection extends StatelessWidget {
  final List<String> images;
  final String selected;
  final ValueChanged<String> onSelect;

  const GallerySection({
    super.key,
    required this.images,
    required this.selected,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (final img in images)
            GalleryThumbnail(
              image: img,
              selected: img == selected,
              onTap: () => onSelect(img),
            ),
        ],
      ),
    );
  }
}