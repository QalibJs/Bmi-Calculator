import '../global/constants/app_box_decoration.dart';
import 'package:flutter/material.dart';

import '../global/constants/app_border_radius.dart';
import '../global/constants/app_padding.dart';
import '../global/constants/app_sizedbox.dart';
import '../global/themes/app_colors.dart';
import 'box_title_widget.dart';
import 'number_text_widget.dart';
import 'operation_button_widget.dart';

class SizeBoxWidget extends StatelessWidget {
  final bool isAge;
  final int age;
  final int weight;
  final void Function() onTapMinus;
  final void Function() onTapPlus;

  const SizeBoxWidget({
    super.key,
    required this.isAge,
    required this.age,
    required this.weight,
    required this.onTapMinus,
    required this.onTapPlus,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: AppPadding.paddingV24,
        decoration: AppBoxDecoration.appBoxDecoration,
        child: Column(
          children: [
            BoxTitleWidget(text: isAge ? 'AGE' : 'WEIGHT'),
            AppSizedBox.sizedBoxH4,
            NumberTextWidget(number: isAge ? age : weight),
            AppSizedBox.sizedBoxH4,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OperationButtonWidget(
                  icon: Icons.remove_rounded,
                  onTap: () => onTapMinus(),
                ),
                AppSizedBox.sizedBoxW8,
                OperationButtonWidget(
                  icon: Icons.add_rounded,
                  onTap: () => onTapPlus(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
