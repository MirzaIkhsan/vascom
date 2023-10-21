import 'package:flutter/material.dart';
import 'package:vascom/pages/register/register_controller.dart';
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
    final controller = RegisterController.create;

    return Form(
      key: controller.formKey,
      onChanged: () {
        final firstName = controller.firstNameTEC.text;
        final lastName = controller.lastNameTEC.text;

        if (firstName.isEmpty || lastName.isEmpty) {
          isFilled?.call(false);
          return;
        }

        final ktp = controller.ktpTEC.text;
        final email = controller.emailTEC.text;
        final telp = controller.phoneTEC.text;
        final password = controller.passwordTEC.text;
        final confirmationPassword = controller.confirmationPasswordTEC.text;

        if (ktp.isEmpty ||
            email.isEmpty ||
            telp.isEmpty ||
            password.isEmpty ||
            confirmationPassword.isEmpty) {
          isFilled?.call(false);
        } else {
          isFilled?.call(true);
        }
      },
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: DefaultTextFormField.named(
                  controller: controller.firstNameTEC,
                  named: "Nama Depan",
                  hint: "Nama depan",
                  textInputType: TextInputType.name,
                  validator: CustomValidator.validateNotEmpty,
                ),
              ),
              const SizedBox(width: 35),
              Expanded(
                child: DefaultTextFormField.named(
                  controller: controller.lastNameTEC,
                  named: "Nama Belakang",
                  hint: "Nama belakang",
                  textInputType: TextInputType.name,
                  validator: CustomValidator.validateNotEmpty,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          DefaultTextFormField.named(
            controller: controller.ktpTEC,
            named: "No. KTP",
            hint: "Masukkan No. KTP Anda",
            textInputType: TextInputType.number,
            validator: CustomValidator.validateKTP,
          ),
          const SizedBox(height: 40),
          DefaultTextFormField.named(
            controller: controller.emailTEC,
            named: "Email",
            hint: "Masukkan email Anda",
            validator: CustomValidator.validateEmail,
          ),
          const SizedBox(height: 40),
          DefaultTextFormField.named(
            controller: controller.phoneTEC,
            named: "No. Telpon",
            hint: "Masukkan nomor telepon Anda",
            textInputType: TextInputType.number,
            validator: CustomValidator.validatePhoneNumber,
          ),
          const SizedBox(height: 40),
          DefaultTextFormField.named(
            controller: controller.passwordTEC,
            named: "Password",
            hint: "Masukkan password Anda",
            isObsecure: true,
            validator: CustomValidator.validatePassword,
          ),
          const SizedBox(height: 40),
          DefaultTextFormField.named(
            controller: controller.confirmationPasswordTEC,
            named: "Konfirmasi Password",
            hint: "Masukkan konfirmasi password Anda",
            isObsecure: true,
            validator: (value) {
              if (value != controller.passwordTEC.text) {
                return "Password tidak sama";
              }
              return CustomValidator.validatePassword(value);
            },
          ),
        ],
      ),
    );
  }
}
