
import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/core/widgets/custom_text_button.dart';
import 'package:bookly_app/features/home/ui/widgets/book_rating.dart';
import 'package:bookly_app/features/home/ui/widgets/build_book_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 90.w),
          child: const BuildBookItemView(),
        ),
        verticalSpace(25),
        Text(
          "The Jungle Book",
          style: TextStyles.font24Regular,
        ),
        verticalSpace(3),
        Text(
          " Rudyard Kipling",
          style: TextStyles.font16Medium.copyWith(color: Colors.grey),
        ),
        verticalSpace(14),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        verticalSpace(30),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Row(
            children: [
              Expanded(
                  child: CustomTextButton(
                backgroundColor: Colors.white,
                text: "19.99€",
                fontSize: 18.sp,
                textColor: Colors.black,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  topLeft: Radius.circular(16),
                ),
              )),
              const Expanded(
                  child: CustomTextButton(
                backgroundColor: Color(0xffEF8262),
                text: "Free preview",
                textColor: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
              )),
            ],
          ),
        ),
      ],
    );
  }
}