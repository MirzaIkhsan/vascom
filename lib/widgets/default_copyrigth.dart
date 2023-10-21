import 'package:flutter/material.dart';
import 'package:vascom/utils/color.utils.dart';
import 'package:vascom/utils/text.utils.dart';

class DefaultCopyright extends StatelessWidget {
  const DefaultCopyright({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.copyright,
          color: ColorUtils.frenchGrey,
          size: 16,
        ),
        const SizedBox(width: 8),
        Text(
          "SILK. all right reserved",
          style: TextUtils.proximaNovaStyle.semiBold12FrenchGrey,
        ),
      ],
    );
  }
}
