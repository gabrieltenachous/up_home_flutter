import 'package:flutter/material.dart';
import 'package:up_home/src/config/custom_colors.dart';

class AppColorThemes {
  static late Color primaryColor;
  static late Color textButtonColor;
  static late Color secondaryColor;
  static late Color inputColor;
  static late Color ternaryColor;
}

class ThemeConfig {
  static ThemeData getTheme({required CustomColors customColors}) {
    // Definindo as cores no objeto AppColorThemes
    AppColorThemes.primaryColor = customColors.primaryColor;
    AppColorThemes.textButtonColor = customColors.textButton;
    AppColorThemes.secondaryColor = customColors.secondaryColor;
    AppColorThemes.inputColor = customColors.inputColor;
    AppColorThemes.ternaryColor = customColors.ternaryColor;

    return ThemeData(
      brightness: customColors.brightness,
      primaryColor: AppColorThemes.primaryColor,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColorThemes.textButtonColor,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: AppColorThemes.textButtonColor,
          backgroundColor: AppColorThemes.secondaryColor,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(
          color: AppColorThemes.inputColor,
        ),
        hintStyle: TextStyle(
          color: AppColorThemes.inputColor,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColorThemes.inputColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColorThemes.inputColor,
          ),
        ),
      ),
    );
  }
}
