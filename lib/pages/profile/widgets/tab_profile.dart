import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascom/pages/profile/profile_controller.dart';
import 'package:vascom/utils/widget.utils.dart';
import 'package:vascom/widgets/custom_tab_item.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ProfileController.create;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: ["Profile Saya", "Pengaturan"]
                .asMap()
                .map(
                  (idx, value) => MapEntry(
                    idx,
                    Obx(() {
                      return CustomTabItem(
                        title: value,
                        isActive: idx == controller.selectedTab.value,
                        onTap: () => controller.selectedTab.value = idx,
                      );
                    }),
                  ),
                )
                .values
                .toList()
                .addHorizontalSpace(8),
          ),
        ),
      ],
    );
  }
}
