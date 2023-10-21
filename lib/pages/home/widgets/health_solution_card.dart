import 'package:flutter/material.dart';
import 'package:vascom/utils/text.utils.dart';
import 'package:vascom/widgets/default_button.dart';
import 'package:vascom/widgets/default_feature_card.dart';

class HealthSolutionCard extends StatelessWidget {
  const HealthSolutionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultFeaturedCard(
      asset: "assets/svgs/schedule.svg",
      assetAlignment: const Alignment(-0.1, -2.5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: "Solusi, ",
              style: TextUtils.gilroyStyle.semiBold20DeepBlue,
              children: [
                TextSpan(
                  text: "Kesehatan Anda",
                  style: TextUtils.gilroyStyle.bold20DeepBlue,
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),
          Text(
            "Update informasi seputar kesehatan semua bisa disini!",
            style: TextUtils.proximaNovaStyle.normal14WikawaGrey,
          ),
          const Spacer(),
          SizedBox(
            width: 150,
            child: DefaultButton(
              title: "Selengkapnya",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
