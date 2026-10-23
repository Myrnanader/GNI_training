import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class WelcomeActionButton extends StatelessWidget {
  const WelcomeActionButton({
    required this.label,
    super.key,
    this.outlined = false,
  });

  final String label;
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    final shape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(28),
    );

    return SizedBox(
      width: double.infinity,
      height: 44,
      child: outlined
          ? OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: AppColors.primary,
                side: const BorderSide(color: AppColors.primary),
                shape: shape,
              ),
              child: Text(label),
            )
          : ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                elevation: 0,
                shape: shape,
              ),
              child: Text(label),
            ),
    );
  }
}
