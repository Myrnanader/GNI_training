import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../../../core/widgets/spacing_widgets.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginForm({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  String? _validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return AppConstants.emailRequired;
    }
    if (!value.contains('@')) {
      return AppConstants.emailInvalid;
    }
    return null;
  }

  String? _validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return AppConstants.passwordRequired;
    }
    if (value.length < 6) {
      return AppConstants.passwordTooShort;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(AppConstants.emailLabel, style: AppTextStyles.label),
        const HeightSpace(20),
        CustomTextField(
          controller: emailController,
          hintText: AppConstants.emailHint,
          keyboardType: TextInputType.emailAddress,
          validator: _validateEmail,
        ),
        const HeightSpace(28),
        Text(AppConstants.passwordLabel, style: AppTextStyles.label),
        const HeightSpace(20),
        CustomTextField(
          controller: passwordController,
          hintText: AppConstants.passwordHint,
          isPassword: true,
          textInputAction: TextInputAction.done,
          validator: _validatePassword,
        ),
      ],
    );
  }
}
