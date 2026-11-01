import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../app/routes/app_routes.dart';
import '../../../../core/constants/app_assets.dart';
import '../../../../core/theme/app_dimensions.dart';
import '../../../../core/widgets/app_screen.dart';
import '../../../../core/widgets/spacing_widgets.dart';
import '../widgets/onboarding_card.dart';

class GettingStartedScreen extends StatelessWidget {
  const GettingStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScreen(
      scrollable: false,
      useSafeArea: false,
      horizontalPadding: 0,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppAssets.onboardingBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.asset(
              AppAssets.deliveryMan,
              fit: BoxFit.contain,
              alignment: Alignment.bottomCenter,
              //height: 500,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppDimensions.onboardingCardMargin.w,
            ),
            child: OnboardingCard(
              onGetStarted: () {
                Navigator.pushNamed(context, AppRoutes.login);
              },
            ),
          ),
          const HeightSpace(AppDimensions.onboardingBottomMargin),
        ],
      ),
    );
  }
}
