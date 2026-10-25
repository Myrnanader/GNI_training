import 'package:flutter/material.dart';

import '../../core/theme/app_text_styles.dart';

/// "Don't have an account? SignUp" style line.
class AuthFooterLink extends StatelessWidget {
  const AuthFooterLink({
    super.key,
    required this.text,
    required this.linkText,
    required this.onTap,
  });

  final String text;
  final String linkText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('$text ', style: AppTextStyles.body),
        GestureDetector(
          onTap: onTap,
          child: Text(linkText, style: AppTextStyles.link),
        ),
      ],
    );
  }
}