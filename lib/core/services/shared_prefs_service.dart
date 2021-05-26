import 'package:jott_app/core/utils/shared_prefs_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  final SharedPreferences prefs;

  SharedPrefsService(this.prefs);

  Future<void> saveData(String key, String value) async {
    try {
      await prefs.setString(key, value);
    } catch (e) {
      print(e.toString());
    }
  }

  String? retrieveData(String key) {
    String? savedTheme = prefs.getString(key);
    print('saved key is $key');
    return savedTheme;
  }

  Future<void> saveTheme(String value) async {
    try {
      await prefs.setString(SharedPrefKeys.CURRENT_THEME, value);
    } catch (e) {
      print(e.toString());
    }
  }

  String? retrieveTheme() {
    String? savedTheme = prefs.getString(SharedPrefKeys.CURRENT_THEME);
    print('saved theme is $savedTheme');
    return savedTheme;
  }

  // Future<void> checkSharedPrefsInstance() async {
  //   _prefs ??= await SharedPreferences.getInstance();
  // }
}
