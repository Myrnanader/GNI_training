
import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class SocialLoginRow extends StatelessWidget {
  const SocialLoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        _SocialTile(
          image: 'assets/images/facebook_logo.png',
        ),

        _SocialTile(
          image: 'assets/images/Google_logo.png',
        ),

        _SocialTile(
          image: 'assets/images/twitter_logo.png',
        ),
      ],
    );
  }
}

class _SocialTile extends StatelessWidget {
  final String image;

  const _SocialTile({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 76,
      height: 48,

      decoration: BoxDecoration(
        color: AppColors.input,
        borderRadius: BorderRadius.circular(9),
      ),

      child: Center(
        child: Image.asset(
          image,
          width: 24,
          height: 24,
          fit: BoxFit.contain,

          errorBuilder: (context, error, stackTrace) {
            return const Icon(
              Icons.image_not_supported_outlined,
              color: Colors.white,
            );
          },
        ),
      ),
    );
  }
}
