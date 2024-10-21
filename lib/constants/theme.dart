import 'package:flutter/material.dart';

class AppTheme {
  static final AppTheme _instance = AppTheme._internal();

  AppTheme._internal();

  factory AppTheme() {
    return _instance;
  }
  ThemeData theme() {
    return ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          primary: const Color(0xff40C4FF),
          secondary: const Color(0xffF44336),
        ),
        primaryColor: const Color(0xff03A9F4),
        textTheme: const TextTheme(
          headlineSmall: TextStyle(
            fontSize: 32,
            fontFamily: 'Roboto-Bold',
            color: Colors.white,
          ),
          bodySmall: TextStyle(
            fontSize: 20,
            fontFamily: 'Roboto-Regular',
            color: Color(0xff1B526B),
          ),
        ));
  }
}
