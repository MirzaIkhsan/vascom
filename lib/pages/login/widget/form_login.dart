import 'package:flutter/material.dart';
import 'package:vascom/pages/login/login_controller.dart';
import 'package:vascom/utils/validator.utils.dart';
import 'package:vascom/widgets/default_text_form_field.dart';

class FormRegistration extends StatelessWidget {
  const FormRegistration({
    super.key,
    this.isFilled,
  });

  final Function(bool)? isFilled;

  @override
  Widget build(BuildContext context) {
    final controller = LoginController.create;

    return Form(
      key: controller.formKey,
      onChanged: () {
        final email = controller.emailTEC.text;
        final password = controller.passwordTEC.text;
        if (email.isEmpty) {
          isFilled?.call(false);
        } else if (password.isEmpty || password.length < 8) {
          isFilled?.call(false);
        } else {
          isFilled?.call(true);
        }
      },
      child: Column(
        children: [
          DefaultTextFormField.named(
            named: "Email",
            controller: controller.emailTEC,
            hint: "Masukkan email anda",
            validator: CustomValidator.validateEmail,
          ),
          const SizedBox(height: 40),
          DefaultTextFormField.named(
            named: "Password",
            controller: controller.passwordTEC,
            suffixNamed: "Lupa Password Anda?",
            hint: "Masukkan password anda",
            validator: CustomValidator.validatePassword,
            isObsecure: true,
          ),
        ],
      ),
    );
  }
}
