import 'package:clean_architecture_flutter/core/themes/color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //private variable
  static OutlineInputBorder _border([Color color = ColorList.borderColor]) =>
      OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
        borderSide: BorderSide(color: color, width: 3),
      );
  static final darkThemeMode = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(backgroundColor: ColorList.backgroundColor),
    scaffoldBackgroundColor: ColorList.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.all(27),
        focusedBorder: _border(ColorList.gradient2),
        enabledBorder: _border()),
  );
}
