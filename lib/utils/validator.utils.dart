import 'package:get/get_utils/get_utils.dart';

abstract class CustomValidator {
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
