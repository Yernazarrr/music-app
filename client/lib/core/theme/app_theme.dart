import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract final class AppTheme {
  AppTheme._();

  static OutlineInputBorder _border(Color borderColor) => OutlineInputBorder(
    borderSide: BorderSide(
      color: borderColor,
      width: 3,
    ),
    borderRadius: .circular(10),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: AppColors.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const .all(27),
      enabledBorder: _border(AppColors.borderColor),
      focusedBorder: _border(AppColors.gradient2),
    ),
  );
}
