import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/features/home/ui/widgets/build_book_item_view.dart';
import 'package:bookly_app/features/home/ui/widgets/salary_and_rating.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildBookSellerItem extends StatelessWidget {
  const BuildBookSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w),
      child: Row(
        children: [
          SizedBox(
            height: 110.h,
            child: const BuildBookItemView(),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Harry Potter and the Goblet of Fire ",
                    style: TextStyles.font20Regular,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    "J.K. Rowling",
                    style: TextStyles.font14Regular.copyWith(
                        color: const Color.fromARGB(146, 255, 255, 255)),
                  ),
                  verticalSpace(3),
                  const SalaryAndRating(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
