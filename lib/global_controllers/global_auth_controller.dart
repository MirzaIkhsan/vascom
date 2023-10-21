import 'package:get/get.dart';
import 'package:vascom/services/local/token_preferences.dart';

class GlobalAuthController extends GetxController {
  static GlobalAuthController get create {
    if (Get.isRegistered<GlobalAuthController>()) {
      return Get.find<GlobalAuthController>();
    }
    return Get.put(GlobalAuthController(), permanent: true);
  }

  Rx<String?> authToken = Rx(null);

  bool get isLoggedIn => authToken.value != null;

  Future<void> login(String token) async {
    authToken.value = token;
    await TokenPreferences.create(token);
  }

  Future<void> autoLogin() async {
    final token = await TokenPreferences.read();
    if (token == null) return;
    authToken.value = token;
  }

  Future<bool> logout() async {
    authToken.value = null;
    return await TokenPreferences.delete();
  }
}
