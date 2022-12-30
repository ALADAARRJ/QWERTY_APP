import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.teal;
  static const Color second = Colors.pink;

  static final ThemeData blackTheme = ThemeData.dark().copyWith(
      primaryColor: Colors.teal,
      appBarTheme: const AppBarTheme(
        color: primary,
        elevation: 5,
        centerTitle: true,
      ),
      
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      backgroundColor: primary,
      shape: const StadiumBorder(),
    )),

inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: primary, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red, width: 2),
          borderRadius: BorderRadius.all(Radius.circular(10))),
    ),

      );
      
}
