import 'package:flutter/material.dart';
import 'package:vascom/pages/home/widgets/health_solution_card.dart';
import 'package:vascom/pages/home/widgets/track_check.dart';
import 'package:vascom/pages/home/widgets/vaccine_card.dart';

class HorizontalCardSlider extends StatelessWidget {
  const HorizontalCardSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final pageController = PageController();

    return SizedBox(
      height: 180,
      child: PageView(
        controller: pageController,
        physics: const BouncingScrollPhysics(),
        clipBehavior: Clip.none,
        children: const [
          HealthSolutionCard(),
          VaccineCard(),
          TrackCheckCard(),
        ],
      ),
    );
  }
}
