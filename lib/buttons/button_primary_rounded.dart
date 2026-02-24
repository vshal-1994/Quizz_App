import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;
  final double borderRadius;
  final FontWeight? fontWeight;
  final Color shadowColor;
  final double height;
  final double fontSize;
  final double width;

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
    required this.width,
     required this.shadowColor
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height + 6,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [

          Positioned(
            top: 6,
            child: Container(
              width: width == double.infinity
                  ? MediaQuery.of(context).size.width - 48
                  : width,
              height: height,
              decoration: BoxDecoration(
                color: shadowColor,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
            ),
          ),
          GestureDetector(
            onTap: onPressed,
            child: Container(
              width: width == double.infinity
                  ? MediaQuery.of(context).size.width - 48
                  : width,
              height: height,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(borderRadius),
              ),
              child: Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontWeight: fontWeight,
                  fontSize: fontSize,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}