import 'package:flutter/material.dart';

import '../constants/app_constants.dart';
import 'custom_button.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      text: AppConstants.addToCart,
      onPressed: () {
        ScaffoldMessenger.of(context)
          ..hideCurrentSnackBar()
          ..showSnackBar(
            const SnackBar(content: Text(AppConstants.addedToCart)),
          );
      },
    );
  }
}
