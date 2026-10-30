
import 'package:coffe/data/products.dart';
import 'package:flutter/material.dart';

import '../core/app_colors.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onAdd;

  const ProductCard({
    super.key,
    required this.product,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.caramel,
        borderRadius: BorderRadius.circular(10),
      ),

      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: onAdd,

        child: Padding(
          padding: const EdgeInsets.all(9),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Expanded(
                child: Center(
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.contain,

                    errorBuilder: (_, _, _) {
                      return const Icon(
                        Icons.coffee,
                        size: 58,
                        color: AppColors.backgroundDark,
                      );
                    },
                  ),
                ),
              ),

              Row(
                children: [
                  Expanded(
                    child: Text(
                      product.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,

                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                  Text(
                    '\$${product.price}',
                    style: const TextStyle(
                      color: AppColors.backgroundDark,
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 3),

              Text(
                product.description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,

                style: const TextStyle(
                  color: AppColors.backgroundDark,
                  fontSize: 8,
                  height: 1.3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
