import 'package:flutter/material.dart';
import 'package:up_home/src/config/theme_config.dart';
import 'package:up_home/src/config/custom_colors.dart';
import 'package:up_home/src/pages/auth/sign_in_screen.dart'; // Importe suas CustomColors

void main() {
  CustomColors customColors =
      StandartCustomColors(); // Definindo como DarkCustomColors

  runApp(MyApp(customColors: customColors));
}

class MyApp extends StatelessWidget {
  final CustomColors customColors;

  const MyApp({required this.customColors, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeConfig.getTheme(customColors: customColors),
      home: const SiginIn(), // Substitua pelo nome correto da sua tela de login
    );
  }
}
