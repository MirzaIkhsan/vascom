import 'package:flutter/material.dart';
import 'package:vascom/utils/color.utils.dart';

class DefaultOverlayLoading extends StatelessWidget {
  const DefaultOverlayLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height,
      child: const Center(
        child: SizedBox(
          width: 25,
          height: 25,
          child: CircularProgressIndicator(color: ColorUtils.deepblue),
        ),
      ),
    );
  }
}
