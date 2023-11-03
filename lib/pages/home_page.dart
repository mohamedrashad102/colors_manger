import 'package:flutter/material.dart';
import 'package:flutter_tips/common/extension/custom_theme_extension.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Hello, World!",
          style: TextStyle(
            color: context.theme.blueColor, // passing general color using context
          ),
        ),
      ),
    );
  }
}
