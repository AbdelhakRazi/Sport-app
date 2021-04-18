import 'package:flutter/material.dart';
import 'package:s2ee_mobile_app/config/colors.dart';

///this class contain ThemeData used in the App
class AppTheme {
  AppTheme._();
  static ThemeData defaultTheme = ThemeData(
    hintColor: AppColors.blackAccent,
    buttonTheme: ButtonThemeData(
      
      buttonColor: AppColors.teal,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(28.0)), 
      textTheme: ButtonTextTheme.primary,    
      ),
      textTheme: TextTheme(
        subtitle1: TextStyle(color: AppColors.white.withOpacity(0.5),fontSize: 20,fontFamily: "Mullish",fontWeight: FontWeight.normal),
        button: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: "Mullish"),)
  );
}
