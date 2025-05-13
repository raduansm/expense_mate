import 'package:expense_mate/core/const/app_colors.dart';
import 'package:expense_mate/core/const/app_size.dart';
import 'package:expense_mate/core/global_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class OrSignUnWith extends StatelessWidget {
  const OrSignUnWith({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 1,
            decoration: BoxDecoration(color: AppColors.dividerColor),
          ),
        ),
        SizedBox(width: 10),
        CustomText(
          text: text,
          color: Color(0xff4A5568),
          fontSize: getWidth(14, maxWidth: 16),
          fontWeight: FontWeight.w400,
        ),
        SizedBox(width: 10),
        Expanded(
          child: Container(
            height: 1,
            decoration: BoxDecoration(color: AppColors.dividerColor),
          ),
        ),
      ],
    );
  }
}
