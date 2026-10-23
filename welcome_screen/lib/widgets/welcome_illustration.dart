import 'package:flutter/material.dart';

class WelcomeIllustration extends StatelessWidget {
  const WelcomeIllustration({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/welcome_illustration.png',
      height: 250,
      fit: BoxFit.contain,
      semanticLabel: 'A person using a task management app on a phone',
    );
  }
}
