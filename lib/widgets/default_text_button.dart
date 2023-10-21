import 'package:flutter/material.dart';
import 'package:vascom/utils/text.utils.dart';

class DefaultTextButton extends StatelessWidget {
  const DefaultTextButton({
    super.key,
    required this.title,
    this.textStyle,
    this.suffixWidget,
    this.onTap,
  });

  final String title;
  final TextStyle? textStyle;
  final Widget? suffixWidget;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            color: Colors.transparent,
            child: Text(
              title,
              style: textStyle ?? TextUtils.proximaNovaStyle.semiBold14DeepBlue,
            ),
          ),
          if (suffixWidget != null) ...[
            const SizedBox(width: 4),
            suffixWidget!,
          ]
        ],
      ),
    );
  }
}
