import 'package:dio/dio.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:vascom/global_controllers/global_auth_controller.dart';

abstract class Services {
  static Dio dio({
    int version = 1,
    String baseUrl = "",
    int timeout = 10000,
  }) {
    final Map<String, dynamic> headers = {};

    final authController = GlobalAuthController.create;

    if (authController.authToken.value != null) {
      headers["Authorization"] = authController.authToken;
    }

    final dio = Dio(
      BaseOptions(
        headers: headers,
        baseUrl: baseUrl,
        sendTimeout: timeout.milliseconds,
        receiveTimeout: timeout.milliseconds,
      ),
    );

    return dio;
  }
}
