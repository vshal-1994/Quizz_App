import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../models/myprofile_achievement_models.dart';

List<MyProfileAchievementModels> achivements = [
  MyProfileAchievementModels(
    imagepath: "assets/images/smalllogo.png",
    title: "Quizzo",
    number: "85",
  ),
  MyProfileAchievementModels(
    imagepath: "assets/images/coins.png",
    title: "Lifetime Points",
    number: "245,678",
  ),
  MyProfileAchievementModels(
    imagepath: "assets/images/positionmedal.png",
    title: "Top 3 positions",
    number: "38",
  ),
  MyProfileAchievementModels(
    imagepath: "assets/images/clock.png",
    title: "Faster Record",
    number: "72",
  ),
  MyProfileAchievementModels(
    imagepath: "assets/images/fire.png",
    title: "Quizz Passed",
    number: "124",
  ),
  MyProfileAchievementModels(
    imagepath: "assets/images/target.png",
    title: "Challenge Passed",
    number: "269",
  ),
];

class MyProfileAchievementContainer extends StatelessWidget {
  const MyProfileAchievementContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: achivements.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.8,
      ),
      itemBuilder: (context, index) {
        final items = achivements[index];
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: Color(0xFFEEEEEE), width: 1.5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(items.imagepath, height: 30, width: 30),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        items.number,
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height:15),
                      Text(
                        items.title,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF616161),
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
