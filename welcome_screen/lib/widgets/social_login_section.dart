import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Sign up using',
          style: TextStyle(color: AppColors.subtitle, fontSize: 11),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _SocialButton(
              label: 'Facebook',
              text: 'f',
              color: AppColors.facebook,
            ),
            const SizedBox(width: 12),
            _SocialButton(label: 'Google', text: 'G', color: AppColors.google),
            const SizedBox(width: 12),
            _SocialButton(
              label: 'LinkedIn',
              text: 'in',
              color: AppColors.linkedIn,
            ),
          ],
        ),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  const _SocialButton({
    required this.label,
    required this.text,
    required this.color,
  });

  final String label;
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: label,
      button: true,
      child: SizedBox(
        width: 36,
        height: 36,
        child: Material(
          color: color,
          shape: const CircleBorder(),
          child: InkWell(
            onTap: () {},
            customBorder: const CircleBorder(),
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
