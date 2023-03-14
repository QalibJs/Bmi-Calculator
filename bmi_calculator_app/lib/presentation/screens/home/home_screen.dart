import 'dart:math';

import '../../global/constants/app_border_radius.dart';
import '../../global/constants/app_size.dart';
import '../../global/routes/app_route.dart';
import '../result_screen.dart';
import '../../widgets/appbar_widget.dart';
import '../../widgets/calculate_button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../global/constants/app_padding.dart';
import '../../global/constants/app_sizedbox.dart';
import '../../global/themes/app_colors.dart';
import '../../widgets/gender_box_widget.dart';
import '../../widgets/size_box_widget.dart';
import '../../widgets/slider_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  int weight = 65;
  int age = 24;
  double height = 180;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundDarkColor,
      appBar: const AppBarWidget(
        title: 'BMI CALCULATOR',
      ),
      body: Column(
        children: [
          AppSizedBox.sizedBoxH24,
          Row(
            children: [
              //Male
              GenderBoxWidget(
                isMale: true,
                index: 0,
                selectedIndex: selectedIndex,
                onClick: () {
                  selectedIndex = 0;
                  setState(() {});
                },
              ),
              AppSizedBox.sizedBoxW16,
              //Female
              GenderBoxWidget(
                index: 1,
                selectedIndex: selectedIndex,
                isMale: false,
                onClick: () {
                  selectedIndex = 1;
                  setState(() {});
                },
              ),
            ],
          ),
          AppSizedBox.sizedBoxH24,
          SliderWidget(
            height: height,
            onSlide: (double value) {
              height = value;
              setState(() {});
            },
          ),
          AppSizedBox.sizedBoxH24,
          Padding(
            padding: AppPadding.paddingH16,
            child: Row(
              children: [
                SizeBoxWidget(
                  isAge: false,
                  age: age,
                  weight: weight,
                  onTapMinus: () {
                    if (weight > 20) {
                      weight--;
                    }
                    setState(() {});
                  },
                  onTapPlus: () {
                    if (weight < 140) {
                      weight++;
                    }
                    setState(() {});
                  },
                ),
                AppSizedBox.sizedBoxW16,
                SizeBoxWidget(
                  isAge: true,
                  age: age,
                  weight: weight,
                  onTapMinus: () {
                    if (age > 6) {
                      age--;
                    }
                    setState(() {});
                  },
                  onTapPlus: () {
                    if (age < 100) {
                      age++;
                    }
                    setState(() {});
                  },
                ),
              ],
            ),
          ),
          AppSizedBox.sizedBoxH24,
          CalculateButtonWidget(
            text: 'CALCULATE',
            onCalculate: () {
              final double result = calculateResult();
              final String resultText = showResultText(result);
              AppRoute.off(
                context,
                ResultScreen(
                  age: age,
                  resultText: resultText,
                  resultNumber: result,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  double calculateResult() {
    return weight / pow(height / 100, 2);
  }

  String showResultText(double result) {
    if (result >= 25) {
      return 'OVERWEIGHT';
    } else if (result > 18.4 && result < 25) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }
}
