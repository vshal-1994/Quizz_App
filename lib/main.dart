import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/screens/create_account_2.dart';
import 'package:quiz_app/screens/find_friends.dart';
import 'package:quiz_app/screens/myprofile_statistics.dart';
import 'package:quiz_app/screens/quiz_details_full.dart';
import 'package:quiz_app/screens/waiting_for_players.dart';
import 'package:quiz_app/screens/walk_through.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        useMaterial3: true,
        textTheme: GoogleFonts.nunitoTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const WalkThrough3(),
        '/walk-through': (context) => const WalkThrough3(),
        '/quiz': (context) => const QuizDetailsSection(),
        '/create-account': (context) => const CreateAccountTwo(),
        '/find-friends': (context) => const FindFriendsScreen(),
        '/waiting-players':(context)=> const WaitingForPlayers(),
        '/my-profile-statistics':(context)=>const MyProfileStatistics(),
        '/quizdetails-full':(context)=>const QuizDetailsSection(),

      },
    );
  }
}