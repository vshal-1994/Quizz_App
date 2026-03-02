import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
class TimerDotsAnimation extends StatefulWidget {
  const TimerDotsAnimation({super.key});
  @override
  State<TimerDotsAnimation> createState() => _TimerDotsAnimationState();
}
class _TimerDotsAnimationState extends State<TimerDotsAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat();
  }@override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        RotationTransition(
          turns: _controller,
          child: SizedBox(
            width: 100,
            height: 100,
            child: Stack(
              children: List.generate(15, (index) {
                double angle = (index * 45) * (math.pi / 180);
                double dotSize = 20.0 - (index * 1.4);
                return Align(
                  alignment: Alignment(
                    math.cos(angle) * 0.9,
                    math.sin(angle) * 0.9,
                  ),
                  child: Container(
                    width: dotSize,
                    height: dotSize,
                    decoration: const BoxDecoration(
                      color: AppColors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/my-profile-statistics');
          },
          child: const Text(
            "25",
            style: TextStyle(
              color: AppColors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
