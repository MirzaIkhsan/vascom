import 'package:get/get.dart';

class ProfileController extends GetxController {
  static ProfileController get create {
    if (Get.isRegistered<ProfileController>()) {
      return Get.find<ProfileController>();
    }
    return Get.put(ProfileController());
  }

  final selectedTab = 0.obs;
}
