import 'package:flutter/material.dart';
import 'package:vascom/utils/color.utils.dart';
import 'package:vascom/utils/text.utils.dart';
import 'package:vascom/widgets/default_feature_card.dart';
import 'package:vascom/widgets/default_text_button.dart';

class VaccineCard extends StatelessWidget {
  const VaccineCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultFeaturedCard(
      asset: "assets/svgs/vaccine.svg",
      assetAlignment: const Alignment(-0.25, -1.2),
      assetSize: const Size(120, 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Layanan Khusus",
            style: TextUtils.gilroyStyle.semiBold20DeepBlue,
          ),
          const SizedBox(height: 8),
          Text(
            "Tes Covid 19, Cegah Corona Sedini Mungkin",
            style: TextUtils.proximaNovaStyle.normal14WikawaGrey,
          ),
          const Spacer(),
          DefaultTextButton(
            title: "Daftar Test",
            textStyle: TextUtils.gilroyStyle.bold16DeepBlue,
            suffixWidget: const Icon(
              Icons.arrow_forward_rounded,
              color: ColorUtils.deepblue,
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
