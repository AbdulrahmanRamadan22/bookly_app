import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/core/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/ui/widgets/build_book_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w, top: 55.h, right: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          verticalSpace(15),
          const BuildBookListView(),
          verticalSpace(40),
          Text(
            "Best Seller",
            style: TextStyles.titleMedium,
          ),
        ],
      ),
    );
  }
}
