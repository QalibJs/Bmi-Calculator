import '../global/themes/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../global/constants/app_box_decoration.dart';
import '../global/constants/app_padding.dart';
import '../global/constants/app_size.dart';
import 'box_title_widget.dart';
import 'number_text_widget.dart';

class SliderWidget extends StatelessWidget {
  final double height;
  final void Function(double) onSlide;

  const SliderWidget({
    super.key,
    required this.height,
    required this.onSlide,
  });

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: 'Slider Widget',
      child: Container(
        padding: AppPadding.paddingV24,
        margin: AppPadding.paddingH16,
        width: AppSize.fullWidth(context),
        decoration: AppBoxDecoration.appBoxDecoration,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const BoxTitleWidget(text: 'HEIGHT'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                NumberTextWidget(number: height.toInt()),
                const BoxTitleWidget(text: 'cm'),
              ],
            ),
            Padding(
              padding: AppPadding.paddingH32,
              child: Slider.adaptive(
                  value: height,
                min: 100,
                max: 200,
                onChanged: onSlide,
                thumbColor: AppColors.primaryColor,
                activeColor: AppColors.sliderColor,
                inactiveColor: AppColors.greyColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
