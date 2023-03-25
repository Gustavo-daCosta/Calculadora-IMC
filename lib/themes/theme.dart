import 'package:calculadora_imc/themes/colors_pallete.dart';
import 'package:flutter/material.dart';


ThemeData themeData() {
  return ThemeData(
    primaryColor: ColorsPallete.primaryColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: ColorsPallete.accentColor,
    ),
    scaffoldBackgroundColor: ColorsPallete.backgroundColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorsPallete.primaryColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(ColorsPallete.accentColor),
      )
    ),
  );
}
