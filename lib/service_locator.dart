import 'package:get_it/get_it.dart';
import 'package:jott_app/core/services/shared_prefs_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

GetIt sl = GetIt.instance;

Future<void> setupLocator() async {
  sl.registerLazySingleton<SharedPrefsService>(() => SharedPrefsService(sl()));

  //! External
  final sharedPreferences = await SharedPreferences.getInstance();

  sl.registerLazySingleton(() => sharedPreferences);
}
