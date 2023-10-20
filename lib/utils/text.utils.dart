// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:vascom/utils/color.utils.dart';

abstract class TextUtils {
  static _GilroyStyle get gilroyStyle => _GilroyStyle();
  static _ProximaNovaStyle get proximaNovaStyle => _ProximaNovaStyle();
}

class _ProximaNovaStyle {
  static const _fontFamily = "ProximaNova";

  TextStyle get normal14FrenchGrey => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 14,
        color: ColorUtils.frenchGrey,
        fontWeight: FontWeight.w400,
      );

  TextStyle get medium14FrenchGrey => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 14,
        color: ColorUtils.frenchGrey,
        fontWeight: FontWeight.w500,
      );

  TextStyle get semiBold14FrenchGrey => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 14,
        color: ColorUtils.frenchGrey,
        fontWeight: FontWeight.w600,
      );

  TextStyle get bold14FrenchGrey => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 14,
        color: ColorUtils.frenchGrey,
        fontWeight: FontWeight.w700,
      );

      TextStyle get normal14DeepBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 14,
        color: ColorUtils.deepblue,
        fontWeight: FontWeight.w400,
      );

  TextStyle get medium14DeepBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 14,
        color: ColorUtils.deepblue,
        fontWeight: FontWeight.w500,
      );

  TextStyle get semiBold14DeepBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 14,
        color: ColorUtils.deepblue,
        fontWeight: FontWeight.w600,
      );

  TextStyle get bold14DeepBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 14,
        color: ColorUtils.deepblue,
        fontWeight: FontWeight.w700,
      );

  TextStyle get normal12PaleBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 12,
        color: ColorUtils.paleBlue,
        fontWeight: FontWeight.w400,
      );

  TextStyle get medium12PaleBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 12,
        color: ColorUtils.paleBlue,
        fontWeight: FontWeight.w500,
      );

  TextStyle get semiBold12PaleBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 12,
        color: ColorUtils.paleBlue,
        fontWeight: FontWeight.w600,
      );

  TextStyle get bold12PaleBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 12,
        color: ColorUtils.paleBlue,
        fontWeight: FontWeight.w700,
      );

  TextStyle get normal14PaleBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 14,
        color: ColorUtils.paleBlue,
        fontWeight: FontWeight.w400,
      );

  TextStyle get medium14PaleBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 14,
        color: ColorUtils.paleBlue,
        fontWeight: FontWeight.w500,
      );

  TextStyle get semiBold14PaleBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 14,
        color: ColorUtils.paleBlue,
        fontWeight: FontWeight.w600,
      );

  TextStyle get bold14PaleBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 14,
        color: ColorUtils.paleBlue,
        fontWeight: FontWeight.w700,
      );
}

class _GilroyStyle {
  static const _fontFamily = "Gilroy";

  TextStyle get normal16White => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w400,
      );

  TextStyle get medium16White => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w500,
      );

  TextStyle get semiBold16White => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      );

  TextStyle get bold16White => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      );

  TextStyle get normal28NileBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 28,
        color: ColorUtils.nileBlue,
        fontWeight: FontWeight.w400,
      );

  TextStyle get medium28NileBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 28,
        color: ColorUtils.nileBlue,
        fontWeight: FontWeight.w500,
      );

  TextStyle get semiBold28NileBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 28,
        color: ColorUtils.nileBlue,
        fontWeight: FontWeight.w600,
      );

  TextStyle get bold28NileBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 28,
        color: ColorUtils.nileBlue,
        fontWeight: FontWeight.w700,
      );

  TextStyle get normal16NileBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 16,
        color: ColorUtils.nileBlue,
        fontWeight: FontWeight.w400,
      );

  TextStyle get medium16NileBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 16,
        color: ColorUtils.nileBlue,
        fontWeight: FontWeight.w500,
      );

  TextStyle get semiBold16NileBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 16,
        color: ColorUtils.nileBlue,
        fontWeight: FontWeight.w600,
      );

  TextStyle get bold16NileBlue => const TextStyle(
        fontFamily: _fontFamily,
        fontSize: 16,
        color: ColorUtils.nileBlue,
        fontWeight: FontWeight.w700,
      );
}
