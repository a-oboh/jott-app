import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jott_app/core/services/shared_prefs_service.dart';
import 'package:jott_app/core/utils/constants.dart';

class CustomTheme extends StateNotifier<ThemeData> {
  final SharedPrefsService sharedPreference;
  CustomTheme(this.sharedPreference)
      : super(
            //check current theme at app start and pass to the super-constructor
            sharedPreference.retrieveTheme() == LIGHT_THEME
                ? CustomTheme.darkThemeData
                : CustomTheme.lightThemeData);

  //change the theme by passing selected themeData and name of the theme
  void changeTheme(ThemeData themeData, String name) {
    if (state != themeData) {
      state = themeData;
      sharedPreference.saveTheme(name);
    }
  }

  static const Color scaffoldLight = Color(0xFFFFF9FA);
  static const Color scaffoldDark = Color(0xFF160105);

  ///PRIMARY COLORS, TINTS AND SHADES
  static const Color primaryColor = Color(0xFF4dc992);
  static const Color primaryTint1 = Color(0xFF5fce9d);
  static const Color primaryTint2 = Color(0xFF71d4a8);
  static const Color primaryTint3 = Color(0xFF82d9b3);
  static const Color primaryTint4 = Color(0xFF94dfbe);
  static const Color primaryTint5 = Color(0xFFb8e9d3);
  static const Color primaryShade1 = Color(0xFF0f281d);
  static const Color primaryShade2 = Color(0xFF173c2c);
  static const Color primaryShade3 = Color(0xFF1f503a);
  static const Color primaryShade4 = Color(0xFF276549);
  static const Color primaryShade5 = Color(0xFF2e7958);

  ///secondary colors, tints and shades
  static const Color secondaryColor = Color(0xFF241c15);
  static const Color secondaryTint1 = Color(0xFF3a332c);
  static const Color secondaryTint2 = Color(0xFF504944);
  static const Color secondaryTint3 = Color(0xFF66605b);
  static const Color secondaryTint4 = Color(0xFF928e8a);
  static const Color secondaryTint5 = Color(0xFFe9e8e8);
  static const Color secondaryShade1 = Color(0xFF070604);
  static const Color secondaryShade2 = Color(0xFF0e0b08);
  static const Color secondaryShade3 = Color(0xFF16110d);
  static const Color secondaryShade4 = Color(0xFF19140f);
  static const Color secondaryShade5 = Color(0xFF1d1611);

  ///generic colors
  static const Color successGreen = Color(0xFF1CAE4B);
  static const Color blueColor = Color(0xFF1F8CBD);
  static const Color errorRed = Color(0xFF9B1B33);
  static const Color orangeColor = Color(0xFFC8511B);
  static const Color yellowColor = Color(0xFFC9A717);

  static ThemeData lightThemeData = ThemeData(
      primarySwatch: Colors.green,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: 'NotoSansKR-Regular',
      scaffoldBackgroundColor: scaffoldLight,
      brightness: Brightness.light,
      primaryColor: primaryColor,
      buttonColor: primaryColor,
      textTheme: lightTextTheme);

  static ThemeData darkThemeData = ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
      fontFamily: 'NotoSansKR-Regular',
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: scaffoldDark,
      brightness: Brightness.dark,
      primaryColor: scaffoldLight,
      buttonColor: primaryColor,
      textTheme: darkTextTheme);

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: paragraph2Bold,
    subtitle1: subtitleRegDark,
  );

  static TextTheme lightTextTheme = TextTheme(
    bodyText1: paragraph1Bold,
    subtitle1: subtitleRegLight,
  );

  static const TextStyle subtitleRegLight = TextStyle(
    // subtitle1 -> subtitleRegular
    fontSize: 20,
    color: primaryColor,
  );

  static const TextStyle subtitleRegDark = TextStyle(
    // subtitle1 -> subtitleRegular
    fontSize: 20,
    color: scaffoldLight,
  );

  static const TextStyle paragraph1Bold = TextStyle(
    // bodyText1 -> paragraph1Bold
    fontWeight: FontWeight.w700,
    fontSize: 16,
    color: secondaryTint1,
  );
  static const TextStyle paragraph2Bold = TextStyle(
    // bodyText1 -> paragraph1Bold
    fontWeight: FontWeight.w700,
    fontSize: 30,
    color: Colors.white,
  );
}
