import '../global/themes/app_colors.dart';
import 'package:flutter/material.dart';

class OperationButtonWidget extends StatelessWidget {
  final IconData icon;
  final void Function() onTap;
  const OperationButtonWidget({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          color: AppColors.greyColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
