import 'package:flutter/material.dart';

import '../global/constants/app_border_radius.dart';
import '../global/constants/app_padding.dart';
import '../global/constants/app_size.dart';
import '../global/themes/app_colors.dart';

class CalculateButtonWidget extends StatelessWidget {
  final void Function() onCalculate;
  final String text;

  const CalculateButtonWidget({
    super.key,
    required this.onCalculate,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onCalculate(),
      child: Container(
        width: AppSize.fullWidth(context),
        padding: AppPadding.paddingV16,
        margin: AppPadding.paddingH16,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: AppBorderRadius.borderRadiusC12,
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: AppColors.whiteColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
