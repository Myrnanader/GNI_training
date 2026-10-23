import 'package:flutter/material.dart';
import '../core/app_assets.dart';
import '../widgets/custom_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.background),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(flex: 2),
              Image.asset(
                AppAssets.logo,
                width: 210,
                height: 157,
                fit: BoxFit.contain,
              ),
              const Spacer(flex: 7),
              CustomButton(
                text: 'Get Started',
                onPressed: () {
                  
                },
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}