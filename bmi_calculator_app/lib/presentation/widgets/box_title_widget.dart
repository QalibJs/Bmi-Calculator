import 'package:flutter/material.dart';

import '../global/themes/app_colors.dart';

class BoxTitleWidget extends StatelessWidget {
  final String text;
  const BoxTitleWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        color: AppColors.greyColor,
        fontSize: 18,
      ),
    );
  }
}
