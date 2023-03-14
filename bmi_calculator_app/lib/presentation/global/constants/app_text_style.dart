import 'package:flutter/material.dart';

import '../themes/app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static TextStyle styleB30(Color color) => TextStyle(
        fontSize: 30,
        color: color,
        fontWeight: FontWeight.bold,
      );

  static const TextStyle styleB24White = TextStyle(
    fontSize: 24,
    color: AppColors.whiteColor,
    fontWeight: FontWeight.bold,
  );
}
