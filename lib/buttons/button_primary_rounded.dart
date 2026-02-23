import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;
  final double borderRadius;
  final FontWeight? fontWeight;
  final double height;
  final double fontSize;
  final double? elevation;
  final double  width;

  const AppButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
    required this.borderRadius,
    this.fontWeight,
    required this.height,
    required this.fontSize,
    this.elevation,
    required this.width,

  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height:height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(borderRadius)),
          elevation: elevation??0,
            shadowColor: backgroundColor.withValues(alpha: 0.6)
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style:GoogleFonts.nunito(color: textColor, fontWeight: fontWeight, fontSize:fontSize),
        ),
      ),
    );
  }
}