import 'package:flutter/material.dart';

import '../constants.dart';

ThemeData getApplicationTheme(){
  return ThemeData(
    primaryColor: PrimaryColor, 
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontFamily:'OpenSans-SemiBold'
        ),
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        )
      )
    )
    );

}