import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/features/home/ui/widgets/book_details_section.dart';
import 'package:bookly_app/features/home/ui/widgets/build_book_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                verticalSpace(10),
                const BookDetailsSection(),
                Expanded(child: verticalSpace(50)),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "You can also like",
                      style: TextStyles.font14semiBold,
                    )),
                verticalSpace(10),
                const BuildBookListView(height: 110),
                verticalSpace(20),
              ],
            ),
          ),
        )
      ],
    );
  }
}
