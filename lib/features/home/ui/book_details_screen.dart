import 'package:bookly_app/features/home/ui/widgets/book_details_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Padding(
              padding: EdgeInsets.only(right: 20.w),
              child: const Icon(Icons.shopping_cart_outlined),
            ),
          ),
        ],
        leading: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: IconButton(icon: const Icon(Icons.close), onPressed: () {}),
        ),
      ),
      body: const BookDetailsBody(),
    );
  }
}
