import 'package:flutter/material.dart';
import 'core/theme/app_theme.dart';
import 'core/utils/responsive.dart';
import 'screens/home/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      builder: (context, child) {
        R.init(context);
        return child!;
      },
      home: const HomeScreen(),
    );
  }
}