import 'package:flutter/material.dart';

class HorizontalCardSlider extends StatelessWidget {
  const HorizontalCardSlider({
    super.key,
    this.height,
    this.children = const [],
  });

  final double? height;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    return SizedBox(
      height: height ?? 160,
      child: PageView(
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        children: children,
      ),
    );
  }
}
