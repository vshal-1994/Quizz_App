import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../constants/app_colors.dart';

class WaitingPlayersLowerSection extends StatelessWidget {
  const WaitingPlayersLowerSection({super.key});

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
    return SizedBox(
      height: 160,
      width: double.infinity,
      child: MasonryGridView.count(
        mainAxisSpacing: 16,
        crossAxisSpacing: 16,
        crossAxisCount: 2,
        scrollDirection: Axis.horizontal,
        itemCount: players.length,
        itemBuilder: (context, index) {
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
                  backgroundImage: AssetImage(players[index]['image']!),
                ),
                const SizedBox(width: 8),
                Text(
                  players[index]['name']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
