import 'package:flutter/material.dart';
import 'package:flutter_tips/common/theme/dark_theme.dart';
import 'package:flutter_tips/common/theme/light_theme.dart';
import 'package:flutter_tips/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}
