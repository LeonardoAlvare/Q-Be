import 'package:flutter/material.dart';
import 'package:qbe/core/theme/colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.fondoPrincipal,
      primaryColor: AppColors.acentoPrincipal,

      colorScheme: const ColorScheme.light(
        primary: AppColors.acentoPrincipal,
        secondary: AppColors.acentoSuave,
        surface: AppColors.superficieNeumorfica,
        error: AppColors.estadoInvalido,
      ),

      textTheme: const TextTheme(
        displayMedium: TextStyle(
          color: AppColors.textoPrincipal,
          fontSize: 32,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.5,
          height: 1.1,
        ),
        titleLarge: TextStyle(
          color: AppColors.textoPrincipal,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: AppColors.textoPrincipal,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          color: AppColors.textoPrincipal,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: AppColors.textoSecundario,
          fontSize: 15,
          height: 1.5,
        ),
        bodySmall: TextStyle(color: AppColors.textoSecundario, fontSize: 13),
        labelLarge: TextStyle(
          color: AppColors.textoSecundario,
          fontSize: 12,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.5,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.acentoPrincipal,
          foregroundColor: Colors.white,
          elevation: 0,
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ),

      inputDecorationTheme: const InputDecorationTheme(
        border: InputBorder.none,
        enabledBorder: InputBorder.none,
        focusedBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        fillColor: Colors.transparent,
        hintStyle: TextStyle(color: AppColors.textoSecundario, fontSize: 16),
      ),
    );
  }
}
