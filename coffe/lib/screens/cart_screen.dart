
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/app_colors.dart';
import '../state/cart_controller.dart';
import '../widgets/cart_item_tile.dart';
import '../widgets/coffee_bottom_nav.dart';
import '../widgets/order_summary.dart';
import '../widgets/primary_button.dart';
import 'checkout_screen.dart';
import 'home_screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  String _coupon = '';
  bool _couponApplied = false;

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartController>();

    final discount =
        _couponApplied &&
        _coupon.trim().toUpperCase() == 'COFFEE20'
            ? (cart.subtotal * .2).round()
            : 0;

    final total =
        (cart.subtotal - discount).clamp(0, 999999) +
        cart.shipping;

    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.caramel,
            size: 19,
          ),
        ),

        title: const Text('Cart'),

        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(14),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text(
              'My Order',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 14),

            Expanded(
              child: cart.isEmpty
                  ? Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.shopping_cart_outlined,
                            size: 55,
                            color: AppColors.caramel,
                          ),

                          const SizedBox(height: 12),

                          const Text(
                            'Your cart is empty',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),

                          const SizedBox(height: 14),

                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const HomeScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              'Explore coffee',
                              style: TextStyle(
                                color: AppColors.caramel,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  : ListView(
                      children: [
                        ...cart.items.map(
                          (item) => CartItemTile(item: item),
                        ),

                        OrderSummary(
                          subtotal: cart.subtotal - discount,
                          shipping: cart.shipping,
                          total: total,

                          onPromoChanged: (value) {
                            _coupon = value;
                            _couponApplied = false;
                          },

                          onApply: () {
                            setState(() {
                              _couponApplied =
                                  _coupon.trim().toUpperCase() ==
                                  'COFFEE20';
                            });

                            if (!_couponApplied) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content: Text('Invalid coupon code'),
                                ),
                              );
                            }
                          },
                        ),

                        if (_couponApplied)
                          const Padding(
                            padding: EdgeInsets.only(top: 6),
                            child: Text(
                              'COFFEE20 applied: 20% off',
                              style: TextStyle(
                                color: AppColors.caramelLight,
                                fontSize: 10,
                              ),
                            ),
                          ),
                      ],
                    ),
            ),

            if (!cart.isEmpty) ...[
              const SizedBox(height: 12),

              PrimaryButton(
                label: 'Finalize Order',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const CheckoutScreen(),
                    ),
                  );
                },
              ),
            ],
          ],
        ),
      ),

      bottomNavigationBar: CoffeeBottomNav(
        currentIndex: 1,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (_) => const HomeScreen(),
              ),
            );
          }
        },
      ),
    );
  }
}
