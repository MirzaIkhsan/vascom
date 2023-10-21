import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vascom/utils/text.utils.dart';

class InfoFormProfile extends StatelessWidget {
  const InfoFormProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          "assets/svgs/info.svg",
          width: 20,
          height: 20,
          fit: BoxFit.cover,
        ),
        const SizedBox(width: 12),
        Flexible(
          child: Text(
            "Pastikan profile anda terisi dengan benar, data pribadi anda terjamin keamanannya",
            style: TextUtils.proximaNovaStyle.normal14DeepBlue.copyWith(
              color: const Color(0xFF6A6A6A),
            ),
          ),
        ),
      ],
    );
  }
}
