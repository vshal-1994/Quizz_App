import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_strings.dart';
import '../custom_widgets/waiting_player_animatedrotator.dart';
import '../custom_widgets/waiting_player_section.dart';
import '../custom_widgets/waiting_players_lowersection.dart';
class WaitingForPlayers extends StatelessWidget {
  const WaitingForPlayers({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          AppStrings.waitingForPlayers,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            height: 1.6,
          ),
        ),
        leading: Icon(Icons.close, color: AppColors.white, size: 30),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/backgroundimage.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 24, right: 24),
              child: Column(
                children: [
                  WaitingPlayerSection(),
                  SizedBox(height: 24),
                  WaitingPlayersLowerSection(),
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: TimerDotsAnimation(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
