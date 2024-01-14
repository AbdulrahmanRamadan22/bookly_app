import 'package:bookly_app/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildBookItemView extends StatelessWidget {
  const BuildBookItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
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
