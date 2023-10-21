import 'package:flutter/material.dart';
import 'package:get/get.dart';

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

  void validateFormRegistration() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) return;
  }
}
