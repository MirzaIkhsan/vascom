import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vascom/utils/text.utils.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Ikuti kami di",
          style: TextUtils.gilroyStyle.normal18DeepBlue,
        ),
        const SizedBox(width: 12),
        GestureDetector(
          child: SvgPicture.asset(
            "assets/svgs/fb.svg",
            width: 16,
            height: 16,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          child: SvgPicture.asset(
            "assets/svgs/instagram.svg",
            width: 18,
            height: 18,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 8),
        GestureDetector(
          child: SvgPicture.asset(
            "assets/svgs/twitter.svg",
            width: 18,
            height: 18,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
