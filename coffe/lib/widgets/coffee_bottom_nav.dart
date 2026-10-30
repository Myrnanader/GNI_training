
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/app_colors.dart';
import '../state/cart_controller.dart';

class CoffeeBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CoffeeBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final count = context.watch<CartController>().itemCount;

    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,

      type: BottomNavigationBarType.fixed,

      backgroundColor: AppColors.caramel,
      selectedItemColor: AppColors.backgroundDark,
      unselectedItemColor: Colors.white,

      showSelectedLabels: false,
      showUnselectedLabels: false,

      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home_filled),
          label: 'Home',
        ),

        BottomNavigationBarItem(
          icon: _CartIcon(count: count),
          activeIcon: _CartIcon(
            count: count,
            active: true,
          ),
          label: 'Cart',
        ),

        const BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          label: 'Favorites',
        ),

        const BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          label: 'Profile',
        ),
      ],
    );
  }
}

class _CartIcon extends StatelessWidget {
  final int count;
  final bool active;

  const _CartIcon({
    required this.count,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,

      children: [
        Icon(
          Icons.shopping_cart_outlined,
          color: active
              ? AppColors.backgroundDark
              : Colors.white,
        ),

        if (count > 0)
          Positioned(
            right: -8,
            top: -7,

            child: Container(
              padding: const EdgeInsets.all(3),

              decoration: const BoxDecoration(
                color: AppColors.backgroundDark,
                shape: BoxShape.circle,
              ),

              child: Text(
                '$count',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
