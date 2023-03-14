import 'package:flutter/material.dart';

import '../global/themes/app_colors.dart';

class NumberTextWidget extends StatelessWidget {
  final int number;
  final bool isBig;

  const NumberTextWidget({
    super.key,
    required this.number,
    this.isBig = true,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      number.toString(),
      textAlign: TextAlign.center,
      style: TextStyle(
        color: AppColors.whiteColor,
        fontSize: isBig ? 50 : 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
