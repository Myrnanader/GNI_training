import 'package:flutter/material.dart';
import '../../core/constants/app_sizes.dart';
import '../../core/constants/app_strings.dart';
import '../../core/utils/responsive.dart';
import '../../widgets/custom_search_bar.dart';
import 'widgets/home_header.dart';
import 'widgets/new_arrivals_section.dart';
import 'widgets/popular_shoes_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: AppSizes.screenPadding,
            vertical: 12.s,
          ),
          child: Column(
            children: [
              const HomeHeader(),
              SizedBox(height: 20.s),
              const CustomSearchBar(hint: AppStrings.searchHint),
              SizedBox(height: 28.s),
              const PopularShoesSection(),
              SizedBox(height: 32.s),
              const NewArrivalsSection(),
            ],
          ),
        ),
      ),
    );
  }
}