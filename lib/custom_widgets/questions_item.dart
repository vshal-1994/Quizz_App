import 'package:flutter/material.dart';
import 'package:quiz_app/custom_widgets/question_card.dart';
import 'package:quiz_app/data/dummy_data.dart';

class QuizListSection extends StatelessWidget {
  const QuizListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: quizDetailsList.length,
      separatorBuilder: (_,_) => const SizedBox(height: 16),
      itemBuilder: (context, index) {
        final item = quizDetailsList[index];
        return QuizCard(
          image: item["image"]!,
          title: item["title"]!,
          subtitle: item["subtitle"]!,
        );
      },
    );
  }
}