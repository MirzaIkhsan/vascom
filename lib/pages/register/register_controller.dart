import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascom/global_controllers/global_user_controller.dart';
import 'package:vascom/models/user.model.dart';
import 'package:vascom/pages/home/home_page.dart';
import 'package:vascom/widgets/default_overlay_loading.dart';

class RegisterController extends GetxController {
  static RegisterController get create {
    if (Get.isRegistered<RegisterController>()) {
      return Get.find<RegisterController>();
    }
    return Get.put(RegisterController());
  }

  final formKey = GlobalKey<FormState>();
  final firstNameTEC = TextEditingController();
  final lastNameTEC = TextEditingController();
  final ktpTEC = TextEditingController();
  final emailTEC = TextEditingController();
  final phoneTEC = TextEditingController();
  final passwordTEC = TextEditingController();
  final confirmationPasswordTEC = TextEditingController();

  final isButtonActive = false.obs;

  void validateFormRegistration() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    final fullName = "${firstNameTEC.text} ${lastNameTEC.text}";

    // BLOCKERS: API register user to get token
    await Get.showOverlay<void>(
      loadingWidget: const DefaultOverlayLoading(),
      asyncFunction: () async {
        await Future.delayed(1.seconds);
        const token = "simulate_token";
        final gUserController = GlobalUserController.create;
        // Save token
        await gUserController.authController.login(token);
        gUserController.user.value = User(
          id: "some_random_id",
          name: fullName,
          email: emailTEC.text,
          ktp: ktpTEC.text,
          phone: phoneTEC.text,
        );
      },
    );

    Get.offAll(() => const HomePage());
  }
}
