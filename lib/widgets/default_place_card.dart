import 'package:flutter/material.dart';
import 'package:vascom/models/place.model.dart';
import 'package:vascom/utils/color.utils.dart';
import 'package:vascom/utils/number.utils.dart';
import 'package:vascom/utils/text.utils.dart';

class DefaultPlaceCard extends StatelessWidget {
  const DefaultPlaceCard({
    super.key,
    required this.place,
    this.onTap,
  });

  final Place place;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 30, left: 20, right: 20),
        width: double.infinity,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(41, 190, 190, 190),
                blurRadius: 20,
                offset: Offset(0, 16),
              ),
            ]),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place.title,
                      maxLines: 2,
                      style: TextUtils.proximaNovaStyle.semiBold18DeepBlue
                          .copyWith(
                        height: 1.4,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      place.price.toIDR,
                      style: TextUtils.proximaNovaStyle.semiBold18DeepBlue
                          .copyWith(
                        color: Colors.orange,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const Icon(
                          Icons.local_hospital,
                          size: 16,
                          color: ColorUtils.deepblue,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          place.placeName,
                          style: TextUtils.proximaNovaStyle.bold14FrenchGrey
                              .copyWith(
                            color: const Color(0xFF6A6A6A),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const Icon(
                          Icons.place,
                          size: 16,
                          color: ColorUtils.deepblue,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          place.location,
                          style: TextUtils.proximaNovaStyle.bold14FrenchGrey,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 209, 209, 209),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: place.image == null
                    ? const Icon(Icons.image, size: 50)
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          place.image!,
                          width: 120,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
