import 'package:flutter/material.dart';
import 'package:flutter_tips/common/extension/custom_theme_extension.dart';

// create darkTheme function to use it in MaterialApp
ThemeData lightTheme() {
  final base = ThemeData.light();
  return base.copyWith(
    extensions: [
      CustomThemeExtension.lightTheme,
    ],
  );
}

// create 