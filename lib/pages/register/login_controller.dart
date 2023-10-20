import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  void validateFormRegistration() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
  }
}
