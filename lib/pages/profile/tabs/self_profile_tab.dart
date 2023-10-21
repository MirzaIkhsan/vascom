import 'package:flutter/material.dart';
import 'package:vascom/pages/profile/profile_controller.dart';
import 'package:vascom/pages/profile/widgets/form_profile.dart';
import 'package:vascom/pages/profile/widgets/info_form_profile.dart';
import 'package:vascom/pages/profile/widgets/profile_info_container.dart';
import 'package:vascom/utils/color.utils.dart';
import 'package:vascom/utils/text.utils.dart';
import 'package:vascom/widgets/default_button.dart';

class SelfProfileTab extends StatelessWidget {
  const SelfProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ProfileController.create;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 31,
                ),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    const FormProfile(),
                    const SizedBox(height: 30),
                    const InfoFormProfile(),
                    const SizedBox(height: 35),
                    DefaultButton(
                      title: "Simpan Profile",
                      suffixWidget: const Icon(Icons.save),
                      onPressed: controller.validateFormProfile,
                    )
                  ],
                ),
              ),
              const ProfileInfoContainer(),
            ],
          ),
        ),
        const SizedBox(height: 78),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 45,
            horizontal: 22,
          ),
          width: double.infinity,
          color: ColorUtils.deepblue,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  "Ingin mendapat update dari kami ?",
                  style: TextUtils.gilroyStyle.bold16White,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Dapatkan\nnotifikasi",
                      style: TextUtils.gilroyStyle.normal16White,
                      textAlign: TextAlign.end,
                    ),
                    const SizedBox(width: 16),
                    const Icon(
                      Icons.arrow_forward_outlined,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
