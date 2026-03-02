import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class OptionCardWithCircle extends StatelessWidget {
  final String title;
  final String imagePath;
  final Color sideContainerColor;
  final Color circleColor;

  const OptionCardWithCircle({
    super.key,
    required this.title,
    required this.imagePath,
    required this.sideContainerColor,
    required this.circleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 90,
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFF5F5F5), width: 2),
      ),
      child: Row(
        children: [

          Container(
            width: 100,
            height: double.infinity,
            decoration: BoxDecoration(
              color: sideContainerColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(18),
              ),
            ),
            child: Center(

              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: circleColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 20),

          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 24,
                height:1.6,
                fontWeight: FontWeight.bold,
                color: AppColors.black,

              ),
            ),
          ),
        ],
      ),
    );
  }
}