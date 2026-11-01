import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/constants/app_constants.dart';
import '../core/theme/app_theme.dart';
import '../features/auth/presentation/screens/login_screen.dart';
import '../features/home/presentation/screens/home_screen.dart';
import '../features/onboarding/presentation/screens/getting_started_screen.dart';
import '../features/product/models/food_item.dart';
import '../features/product/presentation/screens/item_details_screen.dart';
import 'routes/app_routes.dart';

class FoodDeliveryApp extends StatelessWidget {
  const FoodDeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: AppConstants.appName,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          initialRoute: AppRoutes.gettingStarted,
          routes: {
            AppRoutes.gettingStarted: (_) => const GettingStartedScreen(),
            AppRoutes.login: (_) => const LoginScreen(),
            AppRoutes.home: (_) => const HomeScreen(),
          },
          onGenerateRoute: (settings) {
            if (settings.name == AppRoutes.itemDetails) {
              return MaterialPageRoute(
                settings: settings,
                builder: (_) => ItemDetailsScreen(
                  food: settings.arguments as FoodItem,
                ),
              );
            }
            return null;
          },
        );
      },
    );
  }
}
