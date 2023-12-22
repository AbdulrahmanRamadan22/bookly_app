import 'package:bookly_app/core/theming/colors.dart';
import 'package:bookly_app/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: ColorsApp.primaryColor),
        home: const SplashScreen());
  }
}
