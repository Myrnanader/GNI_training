
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../core/app_colors.dart';
import '../state/cart_controller.dart';
import '../widgets/order_summary.dart';
import '../widgets/primary_button.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  final _address = TextEditingController(
    text: '19/10, Win Street, Apt',
  );

  String _payment = 'Cash on Delivery';

  @override
  void dispose() {
    _address.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<CartController>();

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
        title: const Text('Checkout'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(14),

        children: [
          const Text(
            'Deliver Address',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 10),

          Container(
            padding: const EdgeInsets.all(11),

            decoration: BoxDecoration(
              color: AppColors.caramel,
              borderRadius: BorderRadius.circular(10),
            ),

            child: Row(
              children: [
                const CircleAvatar(
                  backgroundColor: Color(0xFFE5B987),
                  child: Icon(
                    Icons.location_on_outlined,
                    color: AppColors.backgroundDark,
                  ),
                ),

                const SizedBox(width: 10),

                Expanded(
                  child: TextField(
                    controller: _address,
                    maxLines: 2,

                    style: const TextStyle(
                      color: AppColors.backgroundDark,
                      fontSize: 10,
                    ),

                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      isDense: true,
                      contentPadding: EdgeInsets.zero,
                    ),
                  ),
                ),

                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Change',
                    style: TextStyle(
                      color: AppColors.backgroundDark,
                      fontSize: 9,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 22),

          const Text(
            'Product List',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 10),

          ...cart.items.map(
            (item) => Container(
              margin: const EdgeInsets.only(bottom: 8),
              padding: const EdgeInsets.all(8),

              decoration: BoxDecoration(
                color: AppColors.caramel,
                borderRadius: BorderRadius.circular(9),
              ),

              child: Row(
                children: [
                  Container(
                    width: 62,
                    height: 62,

                    decoration: BoxDecoration(
                      color: const Color(0xFFE5B987),
                      borderRadius: BorderRadius.circular(7),
                    ),

                    child: Image.asset(
                      item.product.image,
                      fit: BoxFit.contain,
                      errorBuilder: (_, _, _) {
                        return const Icon(
                          Icons.coffee,
                          color: AppColors.backgroundDark,
                        );
                      },
                    ),
                  ),

                  const SizedBox(width: 12),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text(
                          item.product.name,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 11,
                          ),
                        ),

                        Text(
                          'Qty: ${item.quantity}',
                          style: const TextStyle(
                            color: AppColors.backgroundDark,
                            fontSize: 9,
                          ),
                        ),

                        Text(
                          '\$${item.product.price * item.quantity}',
                          style: const TextStyle(
                            color: AppColors.backgroundDark,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 12),

          const Text(
            'Payment Method',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 7),

          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),

            decoration: BoxDecoration(
              color: AppColors.caramel,
              borderRadius: BorderRadius.circular(8),
            ),

            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _payment,
                isExpanded: true,
                dropdownColor: AppColors.caramel,

                style: const TextStyle(
                  color: AppColors.backgroundDark,
                  fontSize: 11,
                ),

                items: const [
                  DropdownMenuItem(
                    value: 'Cash on Delivery',
                    child: Text('Cash on Delivery'),
                  ),

                  DropdownMenuItem(
                    value: 'Card',
                    child: Text('Credit / Debit Card'),
                  ),
                ],

                onChanged: (value) {
                  setState(() {
                    _payment = value ?? _payment;
                  });
                },
              ),
            ),
          ),

          const SizedBox(height: 14),

          OrderSummary(
            subtotal: cart.subtotal,
            shipping: cart.shipping,
            total: cart.total,
          ),

          const SizedBox(height: 18),

          PrimaryButton(
            label: 'Continue Payment',

            onPressed: () {
              if (_address.text.trim().isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Please enter your delivery address',
                    ),
                  ),
                );

                return;
              }

              showDialog(
                context: context,

                builder: (dialogContext) {
                  return AlertDialog(
                    title: const Text('Order placed!'),

                    content: Text(
                      'Your coffee order has been confirmed. '
                      'Payment: $_payment.',
                    ),

                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(dialogContext);

                          cart.clear();

                          Navigator.popUntil(
                            context,
                            (route) => route.isFirst,
                          );
                        },

                        child: const Text('Done'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
