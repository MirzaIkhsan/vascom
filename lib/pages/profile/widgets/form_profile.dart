import 'package:flutter/material.dart';
import 'package:vascom/pages/profile/profile_controller.dart';
import 'package:vascom/utils/validator.utils.dart';
import 'package:vascom/widgets/default_text_form_field.dart';

class FormProfile extends StatelessWidget {
  const FormProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ProfileController.create;

    return Form(
      key: controller.formKey,
      child: Column(
        children: [
          const SizedBox(height: 162),
          DefaultTextFormField.named(
            controller: controller.firstNameTEC,
            named: "Nama Depan",
            hint: "Masukkan nama depan Anda",
            validator: CustomValidator.validateNotEmpty,
          ),
          const SizedBox(height: 30),
          DefaultTextFormField.named(
            controller: controller.lastNameTEC,
            named: "Nama Belakang",
            hint: "Masukkan nama belakang Anda",
            validator: (value) {
              final validateNotEmpty = CustomValidator.validateNotEmpty(value);
              if (validateNotEmpty != null) return "Field tidak boleh kosong";
              final validateNoSpace = value!.contains(" ");
              if (validateNoSpace) {
                return "Field tidak boleh mengandung spasi";
              }
              return null;
            },
          ),
          const SizedBox(height: 30),
          DefaultTextFormField.named(
            controller: controller.emailTEC,
            named: "Email",
            hint: "Masukkan email Anda",
            validator: CustomValidator.validateEmail,
          ),
          const SizedBox(height: 30),
          DefaultTextFormField.named(
            controller: controller.phoneTEC,
            named: "No. Telpon",
            hint: "Masukkan nomor telpon Anda",
            validator: CustomValidator.validatePhoneNumber,
          ),
          const SizedBox(height: 30),
          DefaultTextFormField.named(
            controller: controller.ktpTEC,
            named: "No. KTP",
            hint: "Masukkan nomor KTP Anda",
            validator: CustomValidator.validateKTP,
          ),
        ],
      ),
    );
  }
}
