import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/features/home/ui/widgets/build_book_seller_item.dart';
import 'package:flutter/material.dart';

class BuildBookSellerListItem extends StatelessWidget {
  const BuildBookSellerListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => verticalSpace(16),
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) => const BuildBookSellerItem(),
      itemCount: 10,
    );
  }
}
