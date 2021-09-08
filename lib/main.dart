
import 'package:dog_application/screens/dashboard.dart';
import 'package:dog_application/screens/walker_details.dart';
import 'package:flutter/material.dart';

import 'colors/app_colors.dart';
import 'onboarding/onboarding.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static const colors = AppColors();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Inter",
        primarySwatch: Colors.deepOrange
      ),
      home: DashBoard(),
    );
  }
}

