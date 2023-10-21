import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:vascom/models/api_return_value.model.dart';
import 'package:vascom/models/user.model.dart';

abstract class UserServices {
  static Future<ApiReturnValue<User>> fetchUser() async {
    // final dio = Services.dio();

    try {
      // Simulate waiting for response
      await Future.delayed(1.seconds);

      return ApiReturnValue(
        value: User(
          id: 'id',
          name: "Mirza Ikhsan",
          email: "email",
          ktp: "ktp",
          phone: "phone",
        ),
      );
    } on DioException catch (e) {
      return ApiReturnValue(message: e.message);
    }
  }
}
