import 'package:expense_mate/core/const/app_colors.dart';
import 'package:expense_mate/core/const/app_size.dart';
import 'package:expense_mate/core/global_widgets/custom_back_button.dart';
import 'package:expense_mate/core/global_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.text,
    this.topPadding,
    this.backButton,
    this.textColor,
  });
  final String text;
  final double? topPadding;
  final Widget? backButton;
  final Color? textColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: topPadding ?? 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          backButton ?? CustomBackButton(),

          CustomText(
            text: text,
            fontSize: getWidth(18, maxWidth: 20),
            fontWeight: FontWeight.w700,
            color: textColor ?? AppColors.textBlack,
          ),
          SizedBox(height: 24, width: 24),
        ],
      ),
    );
  }
}
