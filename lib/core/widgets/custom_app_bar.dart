import 'package:bookly_app/core/helpers/extensions.dart';
import 'package:bookly_app/core/helpers/routing/routers_string.dart';
import 'package:bookly_app/core/theming/images.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w, top: 40.h, right: 20.w),
      child: Row(
        children: [
          Image.asset(
            ImagesApp.logo,
            height: 18.h,
          ),
          const Spacer(),
          IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                context.pushNamed(Routes.searchScreen);
              },
              icon: const Icon(
                FontAwesomeIcons.magnifyingGlass,
              ))
        ],
      ),
    );
  }
}
