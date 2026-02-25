import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  final int selectedIndex;
  const DotsIndicator({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          height: 8,
          width: selectedIndex == index ? 30 : 8,
          decoration: BoxDecoration(
            color: selectedIndex == index ? const Color(0xFF6949FF) : Colors.grey[300],
            borderRadius: BorderRadius.circular(10),
          ),
        );
      }),
    );
  }
}