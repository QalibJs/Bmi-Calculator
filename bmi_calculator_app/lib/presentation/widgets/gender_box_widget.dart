import '../global/constants/app_border_radius.dart';
import 'box_title_widget.dart';
import 'package:flutter/material.dart';

import '../global/themes/app_colors.dart';

class GenderBoxWidget extends StatelessWidget {
  final bool isMale;
  final void Function() onClick;
  final int index;
  final int selectedIndex;

  const GenderBoxWidget({
    super.key,
    required this.isMale,
    required this.onClick,
    required this.index,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => onClick(),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 24),
          margin:
              EdgeInsets.only(left: isMale ? 16 : 0, right: isMale ? 0 : 16),
          decoration: BoxDecoration(
            color: index == selectedIndex
                ? AppColors.primaryColor
                : AppColors.backgroundLightColor,
            borderRadius: AppBorderRadius.borderRadiusC12,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                isMale ? Icons.male_rounded : Icons.female_rounded,
                color: AppColors.whiteColor,
                size: 24 * 4,
              ),
              BoxTitleWidget(text: isMale ? 'MALE' : 'FEMALE'),
            ],
          ),
        ),
      ),
    );
  }
}
