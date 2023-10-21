import 'package:shared_preferences/shared_preferences.dart';

abstract class TokenPreferences {
  static const String _key = 'TOKEN_PREFERENCES';

  static Future<void> create(String value) async {
    final storage = await SharedPreferences.getInstance();
    storage.setString(_key, value);
  }

  static Future<String?> read() async {
    final storage = await SharedPreferences.getInstance();
    return storage.getString(_key);
  }

  static Future<bool> delete() async {
    final storage = await SharedPreferences.getInstance();
    return await storage.remove(_key);
  }
}
