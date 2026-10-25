import 'package:flutter/material.dart';

import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_text_styles.dart';
import '../../../../shared/widgets/app_text_field.dart';
import '../../../../shared/widgets/primary_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _email = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  void _reset() {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      'Forgot your password',
                      style: AppTextStyles.forgotTitle,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    "Enter your username and we'll help\nyou reset your password.",
                    style: AppTextStyles.subtitle,
                  ),
                  const SizedBox(height: 28),
                  AppTextField(
                    hint: 'Email or username',
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 16),
                  PrimaryButton(label: 'Reset Password', onPressed: _reset),
                  const SizedBox(height: 12),
                  Center(
                    child: GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Text('SignIn', style: AppTextStyles.link),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              left: 32,
              bottom: 40,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  Icons.arrow_circle_left_rounded,
                  color: AppColors.primary,
                  size: 30,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}