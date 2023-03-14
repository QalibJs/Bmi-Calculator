import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import 'app_border_radius.dart';

class AppBoxDecoration {
  AppBoxDecoration._();

  static final BoxDecoration appBoxDecoration = BoxDecoration(
    color: AppColors.backgroundLightColor,
    borderRadius: AppBorderRadius.borderRadiusC12,
  );
}
