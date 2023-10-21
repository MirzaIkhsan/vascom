import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascom/global_controllers/global_user_controller.dart';
import 'package:vascom/utils/color.utils.dart';
import 'package:vascom/utils/text.utils.dart';
import 'package:vascom/widgets/default_user_row.dart';

class ProfileInfoContainer extends StatelessWidget {
  const ProfileInfoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final gUserController = GlobalUserController.create;

    return SizedBox(
      height: 114 + 48,
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              bottom: 32,
              top: 32,
              left: 26.6,
              right: 26.6,
            ),
            width: double.infinity,
            height: 114 + 48,
            decoration: BoxDecoration(
              color: ColorUtils.deepblue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
              alignment: Alignment.topCenter,
              child: Obx(() {
                if (gUserController.user.value == null) {
                  return const SizedBox();
                }
                return DefaultUserRow(
                  user: gUserController.user.value!,
                  titleTextStyle: TextUtils.gilroyStyle.bold22White,
                  subtitleTextStyle: TextUtils.gilroyStyle.normal22White,
                  membershipTextStyle: TextUtils.gilroyStyle.semiBold16White,
                );
              }),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 11,
              ),
              height: 48,
              decoration: const BoxDecoration(
                color: Color(0xFF1A3E78),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Text(
                "Lengkapi profile anda untuk memaksimalkan\npenggunaan aplikasi",
                style: TextUtils.proximaNovaStyle.normal14White,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
