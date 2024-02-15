import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/features/home/ui/widgets/build_book_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildBookSellerListItem extends StatelessWidget {
  const BuildBookSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.w),
      child: ListView.separated(
        separatorBuilder: (context, index) => verticalSpace(16),
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => const BuildBookSellerItem(),
        itemCount: 10,
      ),
    );
  }
}
