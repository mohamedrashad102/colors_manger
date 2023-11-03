import 'package:flutter/material.dart';
import 'package:flutter_tips/common/utils/coloors.dart';

// create class extends ThemeExtension
class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  // Define general colors
  Color? blueColor;
  Color? greyColor;

  CustomThemeExtension({
    required this.blueColor,
    required this.greyColor,
  });

  // static object for lightTheme with light colors
  static final lightTheme = CustomThemeExtension(
    blueColor: Coloors.blueLight,
    greyColor: Coloors.greyLight,
  );
  // static object for darkTheme with dark colors
  static final darkTheme = CustomThemeExtension(
    blueColor: Coloors.blueDark,
    greyColor: Coloors.greyDark,
  );

  // should override copyWith method
  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? blueColor,
    Color? greyColor,
  }) {
    return CustomThemeExtension(
      blueColor: blueColor ?? this.blueColor,
      greyColor: greyColor ?? this.greyColor,
    );
  }

  // should override lerp method
  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      blueColor: Color.lerp(
        blueColor,
        other.blueColor,
        t,
      ),
      greyColor: Color.lerp(
        greyColor,
        other.greyColor,
        t,
      ),
    );
  }
}

// create extension on BuildContext to access color from context
extension ExtendedExtension on BuildContext {
  CustomThemeExtension get theme =>
      Theme.of(this).extension<CustomThemeExtension>()!;
}
