import 'package:flutter/material.dart';

import '../../core/theme/app_text_styles.dart';


class AuthHeader extends StatelessWidget {
  const AuthHeader({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });


  final String image;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          width: 230,
          height: 200,
          fit: BoxFit.contain,
        ),
        Text(title, style: AppTextStyles.title),
        const SizedBox(height: 2),
        Text(subtitle, style: AppTextStyles.subtitle),
      ],
    );
  }
}