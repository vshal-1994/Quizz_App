import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
class WaitingPlayerSection extends StatelessWidget {
  const WaitingPlayerSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 342 / 210,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(28),
                  image: DecorationImage(
                    image: AssetImage("assets/images/imagebacktoschool.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Back to School Quiz Game",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                height: 1.6,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 12),
            Divider(height: 1),
            SizedBox(height: 12),
            const Text(
              "12 players have joined",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                height: 1.6,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
