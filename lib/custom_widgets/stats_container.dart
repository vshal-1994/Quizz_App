import 'package:flutter/material.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> stats = [
      {"number": "10", "label": "Questions"},
      {"number": "20", "label": "Played"},
      {"number": "16", "label": "Favorited"},
      {"number": "8", "label": "Shared"},
    ];

    return Row(
      children: List.generate(
        stats.length,
            (index) => Expanded(
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      stats[index]["number"]!,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      stats[index]["label"]!,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),

              if (index != stats.length - 1)
                Container(
                  height: 50,
                  width: 1.5,
                  color: Color(0xFFE0E0E0),
                ),
            ],
          ),
        ),
      ),
    );
  }
}