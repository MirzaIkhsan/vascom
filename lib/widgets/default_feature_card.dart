import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vascom/utils/color.utils.dart';

enum FeatureDirection { ltr, rtl }

class DefaultFeaturedCard extends StatelessWidget {
  const DefaultFeaturedCard({
    super.key,
    required this.asset,
    required this.child,
    this.assetAlignment,
    this.assetSize,
    this.onTap,
    this.direction = FeatureDirection.ltr,
  });

  final Widget child;
  final String? asset;
  final Alignment? assetAlignment;
  final Size? assetSize;
  final FeatureDirection direction;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Stack(
        fit: StackFit.expand,
        children: [
          GestureDetector(
            onTap: onTap,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              padding: const EdgeInsets.all(16),
              width: double.infinity,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: ColorUtils.deepblue.withOpacity(0.2),
                    blurRadius: 20,
                    spreadRadius: 2,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Row(
                children: [
                  if (direction == FeatureDirection.ltr) ...[
                    Expanded(flex: 2, child: child),
                    const Expanded(flex: 1, child: SizedBox())
                  ] else ...[
                    const Expanded(flex: 1, child: SizedBox()),
                    Expanded(flex: 2, child: child),
                  ],
                ],
              ),
            ),
          ),
          if (asset != null)
            Align(
              alignment: direction == FeatureDirection.ltr
                  ? Alignment.topRight.add(
                      assetAlignment ?? const Alignment(0, 0),
                    )
                  : Alignment.topLeft.add(
                      assetAlignment ?? const Alignment(0, 0),
                    ),
              child: SvgPicture.asset(
                asset!,
                width: assetSize?.width ?? 150,
                height: assetSize?.height ?? 150,
                fit: BoxFit.cover,
              ),
            ),
        ],
      ),
    );
  }
}
