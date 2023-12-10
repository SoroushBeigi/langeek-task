import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

ThemeData themeData = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
  textTheme: TextTheme(
    headlineMedium:  TextStyle(
      color: Colors.black,
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
    ),
    headlineLarge: TextStyle(
      color: Colors.black,
      fontSize: 26.sp,
      fontWeight: FontWeight.w400,
    ),
    displayLarge: TextStyle(
       color: Colors.grey[700],
      fontSize: 18.sp,
      fontWeight: FontWeight.w400,
    ),
    displayMedium: TextStyle(
      color: Colors.white,
      fontSize: 18.sp,
      fontWeight: FontWeight.w700,
    ),
    bodyMedium: TextStyle(
      color: Colors.grey[700],
      fontSize: 18.sp,
    )
 
  ),
);
