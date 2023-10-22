import 'package:flutter/material.dart';
import 'package:vascom/models/product.model.dart';
import 'package:vascom/utils/number.utils.dart';
import 'package:vascom/utils/text.utils.dart';

class DefaultProductCard extends StatelessWidget {
  const DefaultProductCard({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(41, 190, 190, 190),
            blurRadius: 15,
            offset: Offset(0, 16),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Icon(
                Icons.star,
                size: 24,
                color: Colors.yellow,
              ),
              const SizedBox(width: 4),
              Text(
                product.rating.toString(),
                style: TextUtils.proximaNovaStyle.semiBold18FrenchGrey,
              ),
            ],
          ),
          const SizedBox(height: 4),
          const SizedBox(
            width: double.infinity,
            child: Icon(Icons.image, size: 80),
          ),
          const SizedBox(height: 12),
          Text(
            product.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextUtils.proximaNovaStyle.semiBold18DeepBlue,
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.price.toIDR,
                style: TextUtils.proximaNovaStyle.semiBold14White.copyWith(
                  color: Colors.orange,
                ),
              ),
              if (product.isAvailable)
                Container(
                  padding: const EdgeInsets.all(4),
                  constraints: const BoxConstraints(maxWidth: 70),
                  decoration: BoxDecoration(
                    color: const Color(0xFFB3FFCB),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Text(
                      "Ready Stok",
                      overflow: TextOverflow.ellipsis,
                      style: TextUtils.proximaNovaStyle.normal12FrenchGrey
                          .copyWith(color: const Color(0xFF007025)),
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
