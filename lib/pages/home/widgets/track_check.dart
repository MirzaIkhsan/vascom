import 'package:flutter/material.dart';
import 'package:vascom/utils/color.utils.dart';
import 'package:vascom/utils/text.utils.dart';
import 'package:vascom/widgets/default_feature_card.dart';
import 'package:vascom/widgets/default_text_button.dart';

class TrackCheckCard extends StatelessWidget {
  const TrackCheckCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultFeaturedCard(
      asset: "assets/svgs/finder.svg",
      direction: FeatureDirection.rtl,
      assetAlignment: const Alignment(0.15, -0.6),
      assetSize: const Size(95, 95),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Track Pemeriksaan",
            style: TextUtils.gilroyStyle.semiBold20DeepBlue,
          ),
          const SizedBox(height: 8),
          Text(
            "Kamu dapat mengecek progress pemeriksaanmu disini",
            style: TextUtils.proximaNovaStyle.normal14WikawaGrey,
          ),
          const Spacer(),
          DefaultTextButton(
            title: "Track",
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
