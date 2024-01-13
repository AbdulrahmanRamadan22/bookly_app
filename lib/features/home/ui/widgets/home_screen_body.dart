import 'package:bookly_app/core/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 50),
      child: Column(
        children: [
          CustomAppBar(),
        ],
      ),
    );
  }
}
