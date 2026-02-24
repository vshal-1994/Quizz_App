import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widgets/quiz_card.dart';

class QuizListSection extends StatelessWidget {
  const QuizListSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> quizList = [
     // {
       // "image": "assets/images/poll.png",
     //   "title": "1 - Quiz",
       // "subtitle": "How do you get to school by bus?"
     // },
      //{
        //"image": "assets/images/book.png",
      //  "title": "2 - True or False",
       // "subtitle": "This is a book? True or False?"
      //},
     // {
       // "image": "assets/images/diarypen.png",
        //"title": "3 - Puzzle",
        //"subtitle": "Order the following simple words!"
      //},
     // {
      //  "image": "assets/images/typeanswer.png",
        //"title": "4 - Type Answer",
     //   "subtitle": "What does the illustration above describe?"
     // },
      {
        "image": "assets/images/quixaudio.png",
        "title": "1 - Quiz + Audio",
        "subtitle": "What does the audio say?"
     },
      //{
       // "image": "assets/images/slider.png",
        //"title": "6 - Slider",
        //"subtitle": "What is the price of pen above?(Price in USD"
      //},
      //{
        //"image": "assets/images/checkbox.png",
        //"title": "7 - Checkbox ",
        //"subtitle": "What are the objects in the picture above?"
      //},
      //{
        //"image": "assets/images/saytheword.png",
        //"title": "8 - Say the word",
        //"subtitle": "Spell the short sentences above!"
      //},
      {
        "image": "assets/images/poll.png",
        "title": "2 - Poll ",
        "subtitle": "What are your hobbies"
      },
     // {
       // "image": "assets/images/droppin.png",
        //"title": "10 - Drop Pin",
        //"subtitle": "Which objects in the picture above?"
      //},
    ];

    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: quizList.length,
      separatorBuilder: (_,_) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        return QuizCard(
          image: quizList[index]["image"]!,
          title: quizList[index]["title"]!,
          subtitle: quizList[index]["subtitle"]!,
        );
      },
    );
  }
}