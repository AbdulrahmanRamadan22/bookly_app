import 'package:bookly_app/core/helpers/extensions.dart';
import 'package:bookly_app/core/helpers/routing/routers_string.dart';
import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'sliding_text.dart';

class SplashLogoAndText extends StatefulWidget {
  const SplashLogoAndText({Key? key}) : super(key: key);

  @override
  State<SplashLogoAndText> createState() => _SplashLogoAndTextState();
}

class _SplashLogoAndTextState extends State<SplashLogoAndText>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
  

    animationController.dispose();
    // navigateToHome();

      super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(ImagesApp.logo),
        verticalSpace(4),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        context.pushNamedAndRemoveUntil(Routes.homeScreen,
            predicate: (Route<dynamic> route) => false);
      },
    );
  }
}
