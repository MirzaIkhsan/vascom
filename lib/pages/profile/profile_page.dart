import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:vascom/pages/home/widgets/home_app_bar.dart';
import 'package:vascom/pages/home/widgets/home_drawer.dart';
import 'package:vascom/pages/profile/profile_controller.dart';
import 'package:vascom/pages/profile/tabs/self_profile_tab.dart';
import 'package:vascom/pages/profile/widgets/tab_profile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ProfileController.create;
    final scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF5F8FA),
      endDrawer: const HomeDrawer(),
      body: CustomScrollView(
        slivers: [
          HomeAppBar(scaffoldKey: scaffoldKey),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
          const SliverToBoxAdapter(child: TabProfile()),
          const SliverToBoxAdapter(child: SizedBox(height: 40)),
          SliverToBoxAdapter(child: Obx(() {
            if (controller.selectedTab.value == 0) {
              return const SelfProfileTab();
            }
            return const SizedBox();
          })),
        ],
      ),
    );
  }
}
