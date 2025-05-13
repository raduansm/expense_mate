import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRichText extends StatelessWidget {
  final String firstText;
  final String secondText;
  final double fontSize;
  final FontWeight fontWeight;
  final Color firstColor;
  final Color secondColor;

  const CustomRichText({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.fontSize,
    required this.fontWeight,
    required this.firstColor,
    required this.secondColor,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: firstText,
        style: GoogleFonts.roboto(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: firstColor,
        ),
        children: [
          TextSpan(
            text: secondText,
            style: GoogleFonts.roboto(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: secondColor,
            ),
          ),
        ],
      ),
    );
  }
}
