import 'package:bmi_calculator/page/bmi_screen.dart';
import 'package:bmi_calculator/core/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: AppColors.bgColor),
      home: BmiScreen(),
    );
  }
}
