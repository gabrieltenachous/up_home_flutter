import 'package:flutter/material.dart';

abstract class CustomColors {
  Color get primaryColor;
  Color get secondaryColor;
  Color get inputColor;
  Color get textButton;
  Brightness get brightness;
  Color get ternaryColor;
}

class StandartCustomColors implements CustomColors {
  @override
  Color get primaryColor => const Color(0xFF95A1AC);

  @override
  Color get secondaryColor => const Color(0xFF4B39EF);

  @override
  Color get ternaryColor => const Color(0xFF39D2C0);

  @override
  Color get inputColor => Colors.grey;

  @override
  Color get textButton => const Color(0xFFFFFFFF);

  @override
  Brightness get brightness => Brightness.light;
}

class DarkCustomColors implements CustomColors {
  @override
  Color get primaryColor => const Color(0xFF000000);

  @override
  Color get secondaryColor => const Color(0xFF4B39EF);
  @override
  Color get ternaryColor => const Color(0xFF4B39EF);

  @override
  Color get inputColor => const Color(0xFF808080);

  @override
  Color get textButton => const Color(0xFFFFFFFF);

  @override
  Brightness get brightness => Brightness.dark;
}
