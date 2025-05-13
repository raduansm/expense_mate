import 'package:expense_mate/core/const/app_colors.dart';
import 'package:expense_mate/core/const/app_size.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomBackButton extends StatelessWidget {
  const CustomBackButton({super.key, this.iconColor});
  final Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },

      child: SizedBox(
        height: getHeight(20),
        width: getWidth(20),

        child: Icon(
          Icons.backspace_rounded,
          color: iconColor ?? AppColors.textBlack,
        ),
      ),
    );
  }
}
