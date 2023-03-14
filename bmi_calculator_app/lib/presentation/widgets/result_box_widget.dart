import 'package:flutter/material.dart';

import '../global/constants/app_box_decoration.dart';
import '../global/constants/app_padding.dart';
import '../global/constants/app_size.dart';
import '../global/constants/app_sizedbox.dart';
import '../global/constants/app_text_style.dart';
import 'number_text_widget.dart';

class ResultBoxWidget extends StatelessWidget {
  final String resultText;
  final double resultNumber;
  final int age;
  final Color resultTextColor;

  const ResultBoxWidget({
    super.key,
    required this.resultText,
    required this.resultNumber,
    required this.age,
    required this.resultTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.fullWidth(context),
      padding: AppPadding.paddingV24,
      margin: AppPadding.paddingH16,
      decoration: AppBoxDecoration.appBoxDecoration,
      child: Column(
        children: [
          Text(
            resultText,
            style: AppTextStyle.styleB30(resultTextColor),
          ),
          NumberTextWidget(number: resultNumber.toInt()),
          AppSizedBox.sizedBoxH24,
          const Text(
            'Your Age',
            style: AppTextStyle.styleB24White,
          ),
          NumberTextWidget(
            number: age,
            isBig: false,
          ),
        ],
      ),
    );
  }
}
