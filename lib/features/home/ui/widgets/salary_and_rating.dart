import 'package:bookly_app/core/helpers/spacing.dart';
import 'package:bookly_app/core/theming/font_weight_helper.dart';
import 'package:bookly_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SalaryAndRating extends StatelessWidget {
  const SalaryAndRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "19.99 €",
          style: TextStyles.font20Regular
              .copyWith(fontWeight: FontWeightHelper.bold),
        ),
        const Spacer(),
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffFFDD4F),
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
