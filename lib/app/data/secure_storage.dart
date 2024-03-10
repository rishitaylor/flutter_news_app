import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LocalStorage {
  static String homeFeed = 'home';
  static String loginToken = '';
  final storage = const FlutterSecureStorage();
  Future setString(String key, String value) async {
    await storage.write(key: key, value: value);
  }

  Future<String?> getString(String key) async {
    String? value = await storage.read(key: key);
    return value;
  }

  void delString() {
    storage.deleteAll();
    // setString('progress', 'board');
  }
}
