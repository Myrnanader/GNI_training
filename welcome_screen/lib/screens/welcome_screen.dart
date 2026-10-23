import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../widgets/social_login_section.dart';
import '../widgets/welcome_action_button.dart';
import '../widgets/welcome_illustration.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 430),
              child: Column(
                children: [
                  const WelcomeIllustration(),
                  const SizedBox(height: 24),
                  const Text(
                    'Hello',
                    style: TextStyle(
                      color: AppColors.headline,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'Welcome To Little Drop, where\nyou manage your daily tasks',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.subtitle,
                      fontSize: 13,
                      height: 1.35,
                    ),
                  ),
                  const SizedBox(height: 32),
                  const SizedBox(
                    width: 240,
                    child: Column(
                      children: [
                        WelcomeActionButton(label: 'Login'),
                        SizedBox(height: 12),
                        WelcomeActionButton(label: 'Sign Up', outlined: true),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  const SocialLoginSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
