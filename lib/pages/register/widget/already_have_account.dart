import 'package:flutter/material.dart';
import 'package:vascom/utils/text.utils.dart';
import 'package:vascom/widgets/default_text_button.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Belum punya akun ?",
          style: TextUtils.proximaNovaStyle.normal14FrenchGrey,
        ),
        const SizedBox(width: 8),
        DefaultTextButton(
          title: "Daftar Sekarang",
          onTap: () {},
        ),
      ],
    );
  }
}
