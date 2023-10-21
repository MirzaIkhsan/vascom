import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vascom/pages/register/register_controller.dart';
import 'package:vascom/pages/register/widget/already_have_account.dart';
import 'package:vascom/pages/register/widget/form_registration.dart';
import 'package:vascom/utils/text.utils.dart';
import 'package:vascom/widgets/default_button.dart';
import 'package:vascom/widgets/default_copyrigth.dart';
import 'package:vascom/widgets/default_greeting_text.dart';
import 'package:vascom/widgets/default_scaffold.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = RegisterController.create;

    return DefaultScaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const DefaultGreetingText(),
              const SizedBox(height: 4),
              Text(
                "Silahkan login untuk melanjutkan",
                style: TextUtils.proximaNovaStyle.semiBold12PaleBlue,
              ),
              Align(
                alignment: Alignment.centerRight.add(const Alignment(0.5, 0)),
                child: SvgPicture.asset(
                  "assets/svgs/riwayat_medis_anda_web.svg",
                  width: 331,
                  fit: BoxFit.cover,
                ),
              ),
              FormRegistration(
                isFilled: (value) => controller.isButtonActive.value = value,
              ),
              const SizedBox(height: 40),
              Obx(() {
                return DefaultButton(
                  title: "Register",
                  suffixWidget: const Icon(Icons.arrow_forward),
                  onPressed: controller.isButtonActive.isTrue
                      ? controller.validateFormRegistration
                      : null,
                );
              }),
              const SizedBox(height: 30),
              const AlreadyHaveAccount(),
              const SizedBox(height: 40),
              const DefaultCopyright(),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
