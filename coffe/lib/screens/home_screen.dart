
import 'package:coffe/models/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/app_colors.dart';
import '../state/cart_controller.dart';
import '../widgets/coffee_bottom_nav.dart';
import '../widgets/custom_svg_icon.dart';
import '../widgets/product_card.dart';
import 'cart_screen.dart';

class HomeScreen extends StatelessWidget {
  final String userName;

  const HomeScreen({
    super.key,
    this.userName = 'Shahzaib',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        toolbarHeight: 88,
        automaticallyImplyLeading: false,

        title: Row(
          children: [
            const CircleAvatar(
              radius: 23,
              backgroundColor: AppColors.caramel,
              child: Icon(
                Icons.person,
                color: AppColors.backgroundDark,
              ),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    userName.isEmpty ? 'Shahzaib' : userName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  const Text(
                    'Good Morning!',
                    style: TextStyle(
                      fontSize: 11,
                      color: AppColors.muted,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),


actions: [
  IconButton(
    onPressed: () {},
    icon: const CustomSvgIcon(
      asset: 'assets/svg/search-line.svg',
      size: 22,
    ),
  ),

  IconButton(
    onPressed: () {},
    icon: const CustomSvgIcon(
      asset: 'assets/svg/notification-4-line.svg',
      size: 22,
    ),
  ),

  const SizedBox(width: 5),
],

      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(13, 5, 13, 8),
        child: Column(
          children: [
            const _OfferBanner(),

            const SizedBox(height: 18),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Our Coffee',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                Text(
                  '${products.length} products',
                  style: const TextStyle(
                    color: AppColors.muted,
                    fontSize: 10,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),

            Expanded(
              child: GridView.builder(
                itemCount: products.length,

                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 13,
                  mainAxisSpacing: 13,
                  childAspectRatio: .88,
                ),

                itemBuilder: (context, index) {
                  final product = products[index];

                  return ProductCard(
                    product: product,
                    onAdd: () {
                      context.read<CartController>().add(product);

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            '${product.name} added to cart',
                          ),
                          duration: const Duration(milliseconds: 900),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: CoffeeBottomNav(
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => const CartScreen(),
              ),
            );
          }
        },
      ),
    );
  }
}

class _OfferBanner extends StatelessWidget {
  const _OfferBanner();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      width: double.infinity,

      padding: const EdgeInsets.fromLTRB(14, 15, 8, 10),

      decoration: BoxDecoration(
        color: AppColors.caramel,
        borderRadius: BorderRadius.circular(11),
      ),

      child: Row(
        children: [
          const Expanded(
            child: Text(
              'Get 20% Discount\nOn your First Order!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                height: 1.45,
              ),
            ),
          ),

          SizedBox(
            width: 112,
            child: Image.asset(
              'assets/images/cofe2.png',
              fit: BoxFit.contain,
              errorBuilder: (_, _, _) {
                return const Icon(
                  Icons.coffee,
                  size: 75,
                  color: AppColors.backgroundDark,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
