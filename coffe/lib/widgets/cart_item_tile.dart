
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/app_colors.dart';
import '../models/cart_item.dart';
import '../state/cart_controller.dart';

class CartItemTile extends StatelessWidget {
  final CartItem item;

  const CartItemTile({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final cart = context.read<CartController>();

    return Dismissible(
      key: ValueKey(item.product.id),

      // Swipe from right to left
      direction: DismissDirection.endToStart,

      // Delete animation
      movementDuration: const Duration(milliseconds: 300),
      resizeDuration: const Duration(milliseconds: 250),

      // Background while swiping
      background: _deleteBackground(),

      secondaryBackground: _deleteBackground(),

      // Delete after completing the swipe
      onDismissed: (direction) {
        cart.remove(item.product.id);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              '${item.product.name} removed from cart',
            ),
            duration: const Duration(seconds: 2),
          ),
        );
      },

      child: _buildCartCard(context, cart),
    );
  }

  Widget _deleteBackground() {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),

      padding: const EdgeInsets.only(right: 22),

      alignment: Alignment.centerRight,

      decoration: BoxDecoration(
        color: const Color(0xFFD94B42),
        borderRadius: BorderRadius.circular(10),
      ),

      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.delete_outline,
            color: Colors.white,
            size: 28,
          ),

          SizedBox(height: 4),

          Text(
            'Delete',
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCartCard(
    BuildContext context,
    CartController cart,
  ) {
    return Container(
      height: 88,
      margin: const EdgeInsets.only(bottom: 10),

      padding: const EdgeInsets.symmetric(
        horizontal: 9,
        vertical: 7,
      ),

      decoration: BoxDecoration(
        color: AppColors.caramel,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Row(
        children: [
          // Product Image
          SizedBox(
            width: 70,

            child: Image.asset(
              item.product.image,
              fit: BoxFit.contain,

              errorBuilder: (_, _, _) {
                return const Icon(
                  Icons.coffee,
                  size: 42,
                  color: AppColors.backgroundDark,
                );
              },
            ),
          ),

          const SizedBox(width: 8),

          // Product Information
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Text(
                  item.product.name,

                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 13,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  '\$${item.product.price}',

                  style: const TextStyle(
                    color: AppColors.backgroundDark,
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          // Decrease Quantity
          _QuantityButton(
            icon: Icons.remove,
            onTap: () {
              cart.decrease(item.product.id);
            },
          ),

          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 9,
            ),

            child: Text(
              '${item.quantity}',

              style: const TextStyle(
                color: AppColors.backgroundDark,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          // Increase Quantity
          _QuantityButton(
            icon: Icons.add,
            onTap: () {
              cart.increase(item.product.id);
            },
          ),

          const SizedBox(width: 4),
        ],
      ),
    );
  }
}

class _QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _QuantityButton({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(5),

      child: Container(
        width: 22,
        height: 22,

        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(5),
        ),

        child: Icon(
          icon,
          color: Colors.white,
          size: 14,
        ),
      ),
    );
  }
}
