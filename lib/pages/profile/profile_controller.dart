import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascom/global_controllers/global_user_controller.dart';
import 'package:vascom/utils/snackbar.utils.dart';
import 'package:vascom/widgets/default_overlay_loading.dart';

class ProfileController extends GetxController {
  static ProfileController get create {
    if (Get.isRegistered<ProfileController>()) {
      return Get.find<ProfileController>();
    }
    return Get.put(ProfileController());
  }

  final selectedTab = 0.obs;

  final gUserController = GlobalUserController.create;
  late final user = gUserController.user.value!;

  final formKey = GlobalKey<FormState>();
  late final firstNameTEC = TextEditingController(text: user.firstName);
  late final lastNameTEC = TextEditingController(text: user.lastName);
  late final emailTEC = TextEditingController(text: user.email);
  late final phoneTEC = TextEditingController(text: user.phone);
  late final ktpTEC = TextEditingController(text: user.ktp);

  void validateFormProfile() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    gUserController.user.value = user.copyWith(
      name: "${firstNameTEC.text} ${lastNameTEC.text}",
      email: emailTEC.text,
      phone: phoneTEC.text,
      ktp: ktpTEC.text,
    );

    // BLOCKERS: Update user info
    await Get.showOverlay(
      loadingWidget: const DefaultOverlayLoading(),
      asyncFunction: () async {
        await Future.delayed(1.seconds);
      },
    );

    Get.showSnackbar(DefaultSnackbar.create(
      title: "Berhasil memperbarui data",
      message: "Data kamu berhasil diperbarui",
    ));
  }
}
