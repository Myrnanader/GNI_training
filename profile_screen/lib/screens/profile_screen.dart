import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../models/service_model.dart';
import '../widgets/profile_header.dart';
import '../widgets/service_card.dart';
import '../widgets/stat_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Column(
        children: [
          Expanded(
            flex: 11,
            child: Stack(
              children: [
                const ProfileHeader(),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 24,
                  child: Column(
                    children: const [
                      Text(
                        'Myrna Nader',
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Flutter Developer',
                        style: TextStyle(color: AppColors.white, fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 24, 20, 0),
              decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StatItem(value: '42', label: 'Projects'),
                      StatItem(value: '712', label: 'Clients'),
                      StatItem(value: '92', label: 'Messages'),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Specialized In',
                        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          foregroundColor: AppColors.black,
                        ),
                        child: const Text(
                          'View All',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w700,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                  Expanded(
                    child: GridView.builder(
                      padding: const EdgeInsets.only(bottom: 16),
                      itemCount: services.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        childAspectRatio: 1,
                      ),
                      itemBuilder: (_, i) => ServiceCard(service: services[i]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}