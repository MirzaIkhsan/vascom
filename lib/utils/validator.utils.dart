import 'package:get/get_utils/get_utils.dart';

abstract class CustomValidator {
  static String? validateNotEmpty(String? value) {
    if (value == null) return "Field tidak boleh kosong";
    if (value.isEmpty) return "Field tidak boleh kosong";
    return null;
  }

  static String? validateKTP(String? value) {
    if (value == null) return "KTP tidak boleh kosong";
    if (value.length != 16) return "Nomor KTP tidak valid";
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) return "Nomor KTP tidak valid";
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) return "Nomor HP tidak boleh kosong";
    if (value.length < 8) return "Nomor HP tidak valid";
    if (!RegExp(r'^[0-9]+$').hasMatch(value)) return "Nomor HP tidak valid";
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null) return "Email tidak boleh kosong";
    if (value.isEmpty) return "Email tidak boleh kosong";
    if (!value.isEmail) return "Format email tidak dikenali";
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null) return "Password tidak boleh kosong";
    if (value.isEmail) return "Password tidak boleh kosong";
    if (value.length < 8) return "Password minimal 8 karakter";
    return null;
  }
}
