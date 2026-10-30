import 'package:flutter/material.dart';
import '../core/theme/app_text_styles.dart';

class TagLabel extends StatelessWidget {
  final String text;
  const TagLabel(this.text, {super.key});

  @override
  Widget build(BuildContext context) =>
      Text(text.toUpperCase(), style: AppTextStyles.tag);
}