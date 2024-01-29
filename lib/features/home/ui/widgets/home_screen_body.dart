import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/core/widgets/custom_app_bar.dart';
import 'package:bookly_app/features/home/ui/widgets/build_book_seller_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        Expanded(
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    verticalSpace(15),
                    // const BuildBookListView(height: 110),
                    verticalSpace(40),
                    Padding(
                      padding: EdgeInsets.only(left: 30.w),
                      child: Text(
                        "Best Seller",
                        style: TextStyles.font18SemiBold,
                      ),
                    ),
                    verticalSpace(20),
                  ],
                ),
              ),
              const SliverFillRemaining(
                child: BuildBookSellerListItem(),
              )
            ],
          ),
        ),
      ],
    );
  }
}
