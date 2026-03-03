import 'package:flutter/material.dart';
import '../constants/app_colors.dart';
import '../constants/app_strings.dart';

class ReusableQuizSection extends StatelessWidget {
  final String title;
  final List<Map<String, String>> quizList;

  const ReusableQuizSection({
    super.key,
    required this.title,
    required this.quizList,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        // SECTION TITLE
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    AppStrings.viewall,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(
                    Icons.arrow_forward,
                    size: 16,
                    color: AppColors.primary,
                  )
                ],
              )
            ],
          ),
        ),

        const SizedBox(height: 16),

        // HORIZONTAL LIST
        SizedBox(
          height: screenWidth*0.55,
          child: ListView.builder(
            padding: const EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            itemCount: quizList.length,
            itemBuilder: (context, index) {
              final quiz = quizList[index];

              return Container(
                width: screenWidth * 0.45,
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 10,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // IMAGE SECTION
                    Container(
                      height: screenWidth * 0.30,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      clipBehavior: Clip.hardEdge,
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.asset(
                              quiz["image"] ?? "",
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            bottom: 12,
                            right: 12,
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                quiz["duration"] ?? "",
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // BOTTOM CONTENT
                    Padding(
                      padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [

                          // TITLE
                          Text(
                            quiz["title"] ?? "",
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              height: 1.3,
                            ),
                          ),

                          const SizedBox(height: 12),

                          // AUTHOR
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const CircleAvatar(
                                radius: 8,
                                backgroundColor: Colors.grey,
                              ),
                              const SizedBox(width: 6),
                              Text(
                                quiz["author"] ?? "",
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}