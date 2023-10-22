import 'package:flutter/material.dart';
import 'package:vascom/utils/text.utils.dart';

class CustomTabItem extends StatelessWidget {
  const CustomTabItem({
    super.key,
    required this.title,
    this.isActive = false,
    this.onTap,
  });

  final bool isActive;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 7,
          horizontal: 22,
        ),
        decoration: BoxDecoration(
          color: isActive ? const Color(0xFF00D9D5) : Colors.transparent,
          borderRadius: isActive ? BorderRadius.circular(100) : null,
        ),
        child: Center(
          child: Text(
            title,
            style: isActive
                ? TextUtils.proximaNovaStyle.semiBold18DeepBlue
                : TextUtils.proximaNovaStyle.normal18DeepBlue,
          ),
        ),
      ),
    );
  }
}
