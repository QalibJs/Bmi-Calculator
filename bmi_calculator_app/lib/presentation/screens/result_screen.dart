import 'package:flutter/material.dart';

import '../global/constants/app_sizedbox.dart';
import '../global/routes/app_route.dart';
import '../global/themes/app_colors.dart';
import '../widgets/appbar_widget.dart';
import '../widgets/calculate_button_widget.dart';
import '../widgets/result_box_widget.dart';
import 'home/home_screen.dart';

class ResultScreen extends StatelessWidget {
  final String resultText;
  final double resultNumber;
  final int age;

  const ResultScreen({
    super.key,
    required this.resultText,
    required this.resultNumber,
    required this.age,
  });

  Color getResultTextColor() {
    if (resultNumber >= 25) {
      return AppColors.errorColor;
    } else if (resultNumber > 18.4 && resultNumber < 25) {
      return AppColors.successColor;
    } else {
      return AppColors.warningColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    Color resultTextColor = getResultTextColor();

    return Scaffold(
      backgroundColor: AppColors.backgroundDarkColor,
      appBar: const AppBarWidget(
        title: 'YOUR RESULT',
      ),
      body: Column(
        children: [
          AppSizedBox.sizedBoxH24,
          ResultBoxWidget(
            resultText: resultText,
            resultNumber: resultNumber,
            age: age,
            resultTextColor: resultTextColor,
          ),
          AppSizedBox.sizedBoxH24,
          CalculateButtonWidget(
            text: 'RE-CALCULATE',
            onCalculate: () {
              AppRoute.off(context, const HomeScreen());
            },
          ),
        ],
      ),
    );
  }
}
