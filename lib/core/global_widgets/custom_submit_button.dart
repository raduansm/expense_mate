import 'package:expense_mate/core/const/app_colors.dart';
import 'package:expense_mate/core/const/app_size.dart';
import 'package:expense_mate/core/global_widgets/custom_text.dart';
import 'package:flutter/material.dart';

class CustomSubmitButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Widget? icon;
  final double? radius;
  final Color? bgColor;
  final Color? border;
  final Color? textColor;
  final double? fontSize;
  final double? height;
  final FontWeight? fontWeight;

  const CustomSubmitButton({
    super.key,
    required this.text,
    required this.onTap,
    this.icon,
    this.bgColor,
    this.border,
    this.textColor,
    this.radius,
    this.fontSize,
    this.height,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(radius ?? 8),
      child: Ink(
        decoration: BoxDecoration(
          color: bgColor ?? AppColors.primaryColor,
          borderRadius: BorderRadius.circular(radius ?? 8),
          border: Border.all(color: border ?? AppColors.primaryColor),
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(radius ?? 8),
          splashColor: Colors.white.withValues(alpha: .3),
          onTap: onTap,
          child: Container(
            height: height ?? getHeight(48, maxHeight: 50),
            width: double.infinity,
            alignment: Alignment.center,
            decoration: BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (icon != null) ...[
                  const SizedBox(width: 5),
                  Container(
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Center(child: icon),
                  ),
                ],

                CustomText(
                  text: text,

                  fontSize: fontSize ?? getWidth(16, maxWidth: 18),
                  fontWeight: fontWeight ?? FontWeight.w700,
                  color: textColor ?? AppColors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
