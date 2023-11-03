import 'package:flutter/material.dart';
import 'package:flutter_tips/common/extension/custom_theme_extension.dart';

// create darkTheme function to use it in MaterialApp
ThemeData darkTheme() {
  final base = ThemeData.dark();
  return base.copyWith(
    extensions: [
      CustomThemeExtension.darkTheme, 
    ],
  );
}
