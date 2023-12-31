import 'package:flutter/material.dart';
import 'package:vascom/utils/color.utils.dart';
import 'package:vascom/utils/text.utils.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.title,
    this.height,
    this.onPressed,
    this.prefixWidget,
    this.suffixWidget,
    this.textStyle,
    this.color,
  });

  final Function()? onPressed;
  final String title;
  final double? height;
  final Widget? prefixWidget;
  final Widget? suffixWidget;
  final TextStyle? textStyle;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 20,
          splashFactory: NoSplash.splashFactory,
          shadowColor: ColorUtils.deepblue.withOpacity(0.6),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: color ?? ColorUtils.deepblue,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: (prefixWidget != null || suffixWidget != null)
                ? MainAxisAlignment.spaceBetween
                : MainAxisAlignment.center,
            children: [
              if (prefixWidget != null || suffixWidget != null)
                SizedBox(width: 24, child: prefixWidget),
              Text(
                title,
                style: textStyle ?? TextUtils.gilroyStyle.semiBold16White,
              ),
              if (prefixWidget != null || suffixWidget != null)
                SizedBox(width: 24, child: suffixWidget),
            ],
          ),
        ),
      ),
    );
  }
}
