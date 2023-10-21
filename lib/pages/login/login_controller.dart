import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vascom/global_controllers/global_auth_controller.dart';
import 'package:vascom/pages/home/home_page.dart';
import 'package:vascom/services/network/auth_services.dart';
import 'package:vascom/utils/snackbar.utils.dart';
import 'package:vascom/widgets/default_overlay_loading.dart';

class LoginController extends GetxController {
  static LoginController get create {
    if (Get.isRegistered<LoginController>()) {
      return Get.find<LoginController>();
    }
    return Get.put(LoginController());
  }

  final formKey = GlobalKey<FormState>();
  final emailTEC = TextEditingController();
  final passwordTEC = TextEditingController();

  final isButtonActive = false.obs;

  void validateFormLogin() async {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;

    final token = await Get.showOverlay<String?>(
      loadingWidget: const DefaultOverlayLoading(),
      asyncFunction: () async {
        final email = emailTEC.text;
        final password = passwordTEC.text;
        final response = await AuthServices.login(
          email: email,
          password: password,
        );

        if (response.isSuccess) return response.value!;
        return null;
      },
    );

    if (token == null) {
      Get.showSnackbar(DefaultSnackbar.create(
        title: "User tidak ditemukan",
        message: "Email atau password kamu tidak ditemukan",
      ));
      return;
    }

    GlobalAuthController.create.login(token);
    Get.offAll(() => const HomePage());
  }
}
