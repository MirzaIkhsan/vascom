import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascom/global_controllers/global_user_controller.dart';
import 'package:vascom/pages/home/widgets/faq_term_condition.dart';
import 'package:vascom/pages/home/widgets/social_media.dart';
import 'package:vascom/pages/login/login_page.dart';
import 'package:vascom/pages/profile/profile_controller.dart';
import 'package:vascom/pages/profile/profile_page.dart';
import 'package:vascom/utils/color.utils.dart';
import 'package:vascom/widgets/default_button.dart';
import 'package:vascom/widgets/default_user_row.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.sizeOf(context).width * 0.85,
      child: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            Obx(() {
              final gUserController = GlobalUserController.create;
              if (gUserController.user.value == null) return const SizedBox();
              return DefaultUserRow(user: gUserController.user.value!);
            }),
            const SizedBox(height: 40),
            ListTile(
              title: const Text("Profile Saya"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
              onTap: () {
                final profileController = ProfileController.create;
                profileController.selectedTab.value = 0;
                Get.to(() => const ProfilePage());
              },
            ),
            ListTile(
              title: const Text("Pengaturan"),
              trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 18),
              onTap: () {
                final profileController = ProfileController.create;
                profileController.selectedTab.value = 1;
                Get.to(() => const ProfilePage());
              },
            ),
            const SizedBox(height: 40),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: DefaultButton(
                title: "Logout",
                color: ColorUtils.red,
                onPressed: () async {
                  final gUserController = GlobalUserController.create;
                  final isLogout =
                      await Get.showOverlay<bool>(asyncFunction: () async {
                    return await gUserController.authController.logout();
                  });
                  if (!isLogout) return;
                  Get.offAll(() => const LoginPage());
                },
              ),
            ),
            const SizedBox(height: 16),
            const SocialMedia(),
            const Spacer(),
            const FAQAndTermCondition(),
            const SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
