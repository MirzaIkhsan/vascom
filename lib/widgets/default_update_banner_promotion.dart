import 'package:flutter/material.dart';
import 'package:vascom/utils/color.utils.dart';
import 'package:vascom/utils/text.utils.dart';

class DefaultUpdateBannerPromotion extends StatelessWidget {
  const DefaultUpdateBannerPromotion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 45,
        horizontal: 22,
      ),
      width: double.infinity,
      color: ColorUtils.deepblue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "Ingin mendapat update dari kami ?",
              style: TextUtils.gilroyStyle.bold16White,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  "Dapatkan\nnotifikasi",
                  style: TextUtils.gilroyStyle.normal16White,
                  textAlign: TextAlign.end,
                ),
                const SizedBox(width: 16),
                const Icon(
                  Icons.arrow_forward_outlined,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}