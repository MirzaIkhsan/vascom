import 'package:get/get.dart';
import 'package:vascom/global_controllers/global_auth_controller.dart';
import 'package:vascom/models/user.model.dart';
import 'package:vascom/services/network/user_services.dart';

class GlobalUserController extends GetxController {
  static GlobalUserController get create {
    if (Get.isRegistered<GlobalUserController>()) {
      return Get.find<GlobalUserController>();
    }
    return Get.put(GlobalUserController(), permanent: true);
  }

  final authController = GlobalAuthController.create;

  Rx<User?> user = Rx(null);

  Future<void> fetchUser() async {
    if (!authController.isLoggedIn) return;

    // BLOCKERS: API fetch user data using token
    final response = await UserServices.fetchUser();
    if (response.isSuccess) {
      user.value = response.value!;
    }
  }
}
