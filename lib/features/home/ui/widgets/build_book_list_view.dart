import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/features/home/ui/widgets/build_book_item_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildBookListView extends StatelessWidget {
  const BuildBookListView({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const BuildBookItemView(),
        itemCount: 10,
        separatorBuilder: (context, index) => horizontalSpace(10),
      ),
    );
  }
}

