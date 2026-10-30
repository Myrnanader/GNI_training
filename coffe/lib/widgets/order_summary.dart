
import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class OrderSummary extends StatelessWidget {
  final int subtotal;
  final int shipping;
  final int total;

  final String? promoCode;
  final ValueChanged<String>? onPromoChanged;
  final VoidCallback? onApply;

  const OrderSummary({
    super.key,
    required this.subtotal,
    required this.shipping,
    required this.total,
    this.promoCode,
    this.onPromoChanged,
    this.onApply,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),

      decoration: BoxDecoration(
        color: AppColors.caramel,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        children: [
          if (onPromoChanged != null) ...[
            Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: onPromoChanged,

                    style: const TextStyle(
                      color: AppColors.backgroundDark,
                      fontSize: 10,
                    ),

                    decoration: InputDecoration(
                      hintText: 'Enter Coupon Code here',

                      hintStyle: const TextStyle(
                        color: AppColors.backgroundDark,
                        fontSize: 9,
                      ),

                      filled: true,
                      fillColor: const Color(0xFFE5B987),

                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 8,
                      ),

                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 5),

                TextButton(
                  onPressed: onApply,

                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.backgroundDark,
                    foregroundColor: Colors.white,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),

                  child: const Text(
                    'Apply',
                    style: TextStyle(fontSize: 10),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 12),
          ],

          _SummaryLine(
            label: 'Sub-total',
            value: subtotal,
          ),

          _SummaryLine(
            label: 'Shipping',
            value: shipping,
          ),

          const Divider(
            color: AppColors.backgroundDark,
            height: 14,
          ),

          _SummaryLine(
            label: 'Total',
            value: total,
            bold: true,
          ),
        ],
      ),
    );
  }
}

class _SummaryLine extends StatelessWidget {
  final String label;
  final int value;
  final bool bold;

  const _SummaryLine({
    required this.label,
    required this.value,
    this.bold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text(
            label,
            style: TextStyle(
              color: AppColors.backgroundDark,
              fontSize: 10,
              fontWeight: bold
                  ? FontWeight.w700
                  : FontWeight.w400,
            ),
          ),

          Text(
            '\$$value',
            style: TextStyle(
              color: AppColors.backgroundDark,
              fontSize: 10,
              fontWeight: bold
                  ? FontWeight.w700
                  : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
