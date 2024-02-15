import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:bookly_app/features/search/ui/widgets/build_book_search_result_list_item.dart';
import 'package:bookly_app/features/search/ui/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchTextField(),
          verticalSpace(20),
          Text(
            "Search Result ",
            style: TextStyles.font18SemiBold,
          ),
          verticalSpace(20),
          const Expanded(child: BuildBookSearchResultListItem()),
        ],
      ),
    );
  }
}
