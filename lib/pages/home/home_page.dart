import 'package:flutter/material.dart';
import 'package:vascom/pages/home/widgets/card_slider.dart';
import 'package:vascom/pages/home/widgets/health_solution_card.dart';
import 'package:vascom/pages/home/widgets/home_app_bar.dart';
import 'package:vascom/pages/home/widgets/home_drawer.dart';
import 'package:vascom/pages/home/widgets/track_check.dart';
import 'package:vascom/pages/home/widgets/vaccine_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      endDrawer: const HomeDrawer(),
      body: CustomScrollView(
        slivers: [
          HomeAppBar(scaffoldKey: scaffoldKey),
          const SliverToBoxAdapter(child: SizedBox(height: 50)),
          const SliverToBoxAdapter(
            child: HorizontalCardSlider(
              children: [
                HealthSolutionCard(),
                VaccineCard(),
                TrackCheckCard(),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 50)),
          const SliverToBoxAdapter(child: VaccineCard()),
          const SliverToBoxAdapter(child: SizedBox(height: 50)),
          const SliverToBoxAdapter(child: TrackCheckCard()),
        ],
      ),
    );
  }
}
