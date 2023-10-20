import 'package:flutter/material.dart';
import 'package:vascom/utils/text.utils.dart';

class GreetingText extends StatelessWidget {
  const GreetingText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "Hai, ",
        style: TextUtils.gilroyStyle.semiBold28NileBlue,
        children: [
          TextSpan(
            text: "Selamat Datang",
            style: TextUtils.gilroyStyle.bold28NileBlue,
          )
        ],
      ),
    );
  }
}
