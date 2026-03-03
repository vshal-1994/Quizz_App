import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class WaitingPlayersLowerSection extends StatefulWidget {
  const WaitingPlayersLowerSection({super.key});

  @override
  State<WaitingPlayersLowerSection> createState() =>
      _WaitingPlayersLowerSectionState();
}

class _WaitingPlayersLowerSectionState extends State<WaitingPlayersLowerSection>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> players = [
      {"name": "Andrew", "image": "assets/images/waitingplayersimage.png"},
      {"name": "Clinton", "image": "assets/images/waitingplayersimage.png"},
      {"name": "Tyra", "image": "assets/images/waitingplayersimage.png"},
      {"name": "Pedro", "image": "assets/images/waitingplayersimage.png"},
      {"name": "Andrew", "image": "assets/images/waitingplayersimage.png"},
      {"name": "Clinton", "image": "assets/images/waitingplayersimage.png"},
      {"name": "Tyra", "image": "assets/images/waitingplayersimage.png"},
      {"name": "Pedro", "image": "assets/images/waitingplayersimage.png"},
    ];
    double chipSpacing = 90.0;
    double totalWidth = (players.length * chipSpacing) + 50;
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Container(
          width: totalWidth,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Stack(
                clipBehavior: Clip.none,
                children: List.generate(players.length, (index) {
                  // Zigzag positioning
                  double baseShift = (index % 2 == 0) ? 0.0 : 100.0;
                  double floatAnim =
                      math.sin((_controller.value * 2 * math.pi) + index) * 10;
                  return Positioned(
                    left: index * chipSpacing,
                    top: baseShift + floatAnim,
                    child: _playerChip(players[index]),
                  );
                }),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _playerChip(Map<String, String> player) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: Colors.blue.shade100,
            backgroundImage: AssetImage(player['image']!),
          ),
          const SizedBox(width: 8),
          Text(
            player['name']!,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
