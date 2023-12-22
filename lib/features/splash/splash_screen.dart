import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/features/splash/widget/sliding_text.dart';
import 'package:bookly_app/features/splash/widget/splash_logo.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SplashLogo(),
          verticalSpace(4),
          const SlidingText(),
        ],
      ),
    );
  }
}
