import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class DefaultSnackbar {
  static GetSnackBar create({
    String? title,
    String? message,
  }) {
    return GetSnackBar(
      title: title,
      message: message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.black,
      snackStyle: SnackStyle.GROUNDED,
      duration: 2.seconds,
    );
  }
}
