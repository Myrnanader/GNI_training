import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../widgets/custom_button.dart';
import '../widgets/profile_header.dart';
import 'profile_screen.dart';

class HeroScreen extends StatelessWidget {
  const HeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          const ProfileHeader(),
          Positioned(
            left: 0,
            right: 0,
            bottom: 24,
            child: Column(
              children: [
                const Text(
                  'Hello I am',
                  style: TextStyle(color: AppColors.white, fontSize: 18),
                ),
                const SizedBox(height: 6),
                const Text(
                  'Myrna Nader',
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(color: AppColors.white, fontSize: 12),
                ),
                const SizedBox(height: 24),
                CustomButton(
                  text: 'Hire Me',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const ProfileScreen()),
                    );
                  },
                ),
                const SizedBox(height: 28),
                const _SocialRow(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SocialRow extends StatelessWidget {
  const _SocialRow();

  @override
  Widget build(BuildContext context) {
    const icons = [
      Icons.alternate_email,
      Icons.facebook,
      Icons.camera_alt_outlined,
      Icons.sports_basketball_outlined,
      Icons.brush_outlined,
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          const Expanded(child: Divider(color: AppColors.grey, thickness: 0.5)),
          const SizedBox(width: 12),
          for (final icon in icons) ...[
            Icon(icon, color: AppColors.white, size: 14),
            const SizedBox(width: 12),
          ],
          const Expanded(child: Divider(color: AppColors.grey, thickness: 0.5)),
        ],
      ),
    );
  }
}