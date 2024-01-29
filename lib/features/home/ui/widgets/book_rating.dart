import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {


  final MainAxisAlignment mainAxisAlignment ;

  const BookRating({super.key, this.mainAxisAlignment=MainAxisAlignment.start});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
          size: 20,
        ),
        horizontalSpace(6.3),
        Text("4.8", style: TextStyles.font16Medium),
        horizontalSpace(5),
        Text(
          "(2390)",
          style: TextStyles.font14Regular.copyWith(
            color: const Color(0xff707070),
          ),
        ),
      ],
    );
  }
}
