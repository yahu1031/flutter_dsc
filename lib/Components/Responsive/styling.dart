import 'package:flutter/material.dart';

import 'sizeConfig.dart';

class AppTheme {
  AppTheme._();

  static const Color appBackgroundColor = Color(0xFFFFF7EC);
  static const Color selectedTabBackgroundColor = Color(0xFFFFC442);
  static const Color unSelectedTabBackgroundColor = Color(0xFFFFFFFC);
  static const Color subTitleTextColor = Color(0xFF9F988F);

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppTheme.appBackgroundColor,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
  );

  static final TextTheme lightTextTheme = TextTheme(
    // ignore: deprecated_member_use
    title: _titleLight,
    // ignore: deprecated_member_use
    subtitle: _subTitleLight,
    // ignore: deprecated_member_use
    button: _buttonLight,
    // ignore: deprecated_member_use
    display1: _greetingLight,
    // ignore: deprecated_member_use
    display2: _searchLight,
    // ignore: deprecated_member_use
    body1: _selectedTabLight,
    // ignore: deprecated_member_use
    body2: _unSelectedTabLight,
  );

  static final TextTheme darkTextTheme = TextTheme(
    // ignore: deprecated_member_use
    title: _titleDark,
    // ignore: deprecated_member_use
    subtitle: _subTitleDark,
    // ignore: deprecated_member_use
    button: _buttonDark,
    // ignore: deprecated_member_use
    display1: _greetingDark,
    // ignore: deprecated_member_use
    display2: _searchDark,
    // ignore: deprecated_member_use
    body1: _selectedTabDark,
    // ignore: deprecated_member_use
    body2: _unSelectedTabDark,
  );

  static final TextStyle _titleLight = TextStyle(
    color: Colors.black,
    fontSize: 3.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _subTitleLight = TextStyle(
    color: subTitleTextColor,
    fontSize: 2 * SizeConfig.textMultiplier,
    height: 1.5,
  );

  static final TextStyle _buttonLight = TextStyle(
    color: Colors.black,
    fontSize: 2.5 * SizeConfig.textMultiplier,
  );

  static final TextStyle _greetingLight = TextStyle(
    color: Colors.black,
    fontSize: 2.0 * SizeConfig.textMultiplier,
  );

  static final TextStyle _searchLight = TextStyle(
    color: Colors.black,
    fontSize: 2.3 * SizeConfig.textMultiplier,
  );

  static final TextStyle _selectedTabLight = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 2 * SizeConfig.textMultiplier,
  );

  static final TextStyle _unSelectedTabLight = TextStyle(
    color: Colors.grey,
    fontSize: 2 * SizeConfig.textMultiplier,
  );

  static final TextStyle _titleDark = _titleLight.copyWith(color: Colors.white);

  static final TextStyle _subTitleDark =
      _subTitleLight.copyWith(color: Colors.white70);

  static final TextStyle _buttonDark =
      _buttonLight.copyWith(color: Colors.black);

  static final TextStyle _greetingDark =
      _greetingLight.copyWith(color: Colors.black);

  static final TextStyle _searchDark =
      _searchDark.copyWith(color: Colors.black);

  static final TextStyle _selectedTabDark =
      _selectedTabDark.copyWith(color: Colors.white);

  static final TextStyle _unSelectedTabDark =
      _selectedTabDark.copyWith(color: Colors.white70);
}
