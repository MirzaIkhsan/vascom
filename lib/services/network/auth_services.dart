import 'package:dio/dio.dart';
import 'package:vascom/models/api_return_value.model.dart';
import 'package:vascom/services/network/services.dart';

abstract class AuthServices {
  static Future<ApiReturnValue<String>> login({
    required String email,
    required String password,
  }) async {
    final dio = Services.dio();
    final data = {"email": email, "password": password};

    try {
      final response = await dio.post(
        "https://reqres.in/api/login",
        data: data,
      );

      dio.close();

      if (response.statusCode != 200) {
        return ApiReturnValue(message: "User not found");
      }
      final token = response.data['token'];
      return ApiReturnValue(value: token);
    } on DioException catch (e) {
      return ApiReturnValue(message: e.message);
    }
  }
}
