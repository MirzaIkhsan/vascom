import 'package:flutter/material.dart';
import 'package:vascom/models/user.model.dart';
import 'package:vascom/utils/text.utils.dart';
import 'package:vascom/widgets/default_display_pict.dart';

class DefaultUserRow extends StatelessWidget {
  const DefaultUserRow({
    super.key,
    required this.user,
    this.titleTextStyle,
    this.subtitleTextStyle,
    this.membershipTextStyle,
  });

  final User user;
  final TextStyle? titleTextStyle;
  final TextStyle? subtitleTextStyle;
  final TextStyle? membershipTextStyle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            DefaultDisplayPict(
              name: user.name,
              pict: user.photo,
              size: 55,
            ),
            const SizedBox(width: 16),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    text: "${user.firstName.split(" ").first} ",
                    style:
                        titleTextStyle ?? TextUtils.gilroyStyle.bold18DeepBlue,
                    children: [
                      if (user.lastName != null)
                        TextSpan(
                          text: user.lastName,
                          style: subtitleTextStyle ??
                              TextUtils.gilroyStyle.normal18DeepBlue,
                        ),
                    ],
                  ),
                ),
                const SizedBox(height: 2),
                Text("Membership BBLK", style: membershipTextStyle),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
