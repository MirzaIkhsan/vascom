import 'package:flutter/material.dart';
import 'package:vascom/pages/profile/profile_controller.dart';
import 'package:vascom/pages/profile/widgets/form_profile.dart';
import 'package:vascom/pages/profile/widgets/info_form_profile.dart';
import 'package:vascom/pages/profile/widgets/profile_info_container.dart';
import 'package:vascom/widgets/default_button.dart';
import 'package:vascom/widgets/default_update_banner_promotion.dart';

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
        const DefaultUpdateBannerPromotion(),
      ],
    );
  }
}


