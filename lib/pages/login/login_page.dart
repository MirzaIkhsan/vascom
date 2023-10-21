import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:vascom/pages/login/login_controller.dart';
import 'package:vascom/pages/login/widget/already_have_account.dart';
import 'package:vascom/pages/login/widget/form_login.dart';
import 'package:vascom/utils/text.utils.dart';
import 'package:vascom/widgets/default_button.dart';
import 'package:vascom/widgets/default_copyrigth.dart';
import 'package:vascom/widgets/default_greeting_text.dart';
import 'package:vascom/widgets/default_scaffold.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = LoginController.create;

    return DefaultScaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            FormLogin(
              isFilled: (value) => controller.isButtonActive.value = value,
            ),
            const SizedBox(height: 40),
            Obx(() {
              return DefaultButton(
                title: "Login",
                suffixWidget: const Icon(Icons.arrow_forward),
                onPressed: controller.isButtonActive.isTrue
                    ? controller.validateFormLogin
                    : null,
              );
            }),
            const SizedBox(height: 40),
            const AlreadyHaveAccount(),
            const SizedBox(height: 40),
            const DefaultCopyright(),
          ],
        ),
      ),
    );
  }
}
