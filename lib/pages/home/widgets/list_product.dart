import 'package:flutter/material.dart';
import 'package:vascom/models/product.model.dart';
import 'package:vascom/widgets/default_product_card.dart';

class ListProduct extends StatelessWidget {
  const ListProduct({
    super.key,
    required this.products,
  });

  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        clipBehavior: Clip.none,
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (_, index) {
          final product = products[index];
          return Padding(
            padding: EdgeInsets.only(
              right: index != products.length - 1 ? 16 : 0,
            ),
            child: DefaultProductCard(product: product),
          );
        },
      ),
    );
  }
}
