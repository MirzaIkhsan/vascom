import 'package:flutter/material.dart';
import 'package:vascom/widgets/default_text_form_field.dart';

class FormProfile extends StatelessWidget {
  const FormProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const SizedBox(height: 162),
          DefaultTextFormField.named(
            controller: TextEditingController(),
            named: "Nama Depan",
            hint: "Masukkan nama depan Anda",
          ),
          const SizedBox(height: 30),
          DefaultTextFormField.named(
            controller: TextEditingController(),
            named: "Nama Belakang",
            hint: "Masukkan nama belakang Anda",
          ),
          const SizedBox(height: 30),
          DefaultTextFormField.named(
            controller: TextEditingController(),
            named: "Email",
            hint: "Masukkan email Anda",
          ),
          const SizedBox(height: 30),
          DefaultTextFormField.named(
            controller: TextEditingController(),
            named: "No. Telpon",
            hint: "Masukkan nomor telpon Anda",
          ),
          const SizedBox(height: 30),
          DefaultTextFormField.named(
            controller: TextEditingController(),
            named: "No. KTP",
            hint: "Masukkan nomor KTP Anda",
          ),
        ],
      ),
    );
  }
}
