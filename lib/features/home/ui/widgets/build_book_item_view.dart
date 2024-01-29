import 'package:bookly_app/core/helpers/extensions.dart';
import 'package:bookly_app/core/helpers/routing/routers_string.dart';
import 'package:bookly_app/core/theming/images.dart';
import 'package:flutter/material.dart';

class BuildBookItemView extends StatelessWidget {
  const BuildBookItemView({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(Routes.bookDetailsScreen);
      },
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            // color: Colors.amber,
            image: const DecorationImage(
                fit: BoxFit.fill, image: AssetImage(ImagesApp.test)),
          ),
        ),
      ),
    );
  }
}
