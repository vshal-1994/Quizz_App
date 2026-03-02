import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_strings.dart';
import '../buttons/button_primary_rounded.dart';
import '../custom_widgets/bottom_nav_bar.dart';
import '../custom_widgets/item_top_authors.dart';
import '../custom_widgets/items_top_collections.dart';
import 'package:quiz_app/constants/app_colors.dart';
import '../custom_widgets/reusable_quiz_section.dart';
import '../data/dummy_data.dart';
class HomeFullPage extends StatelessWidget{
  const HomeFullPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      // header or App Bar
      appBar: AppBar(
          leading: Image.asset('assets/images/logo.png'),
          title: Text(AppStrings.Quizzo, style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold)),
          actions: [
            Image.asset("assets/images/Search.png"),
            SizedBox(width: 20),
            Image.asset("assets/images/notification.png"),
            SizedBox(width: 20),
          ]
      ),

      body:
      SingleChildScrollView(
        child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            //banner section
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Stack(
                children: [
                  Container(
                    height: 170,
                    width: 382,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/desktop_banner.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                //  Banner Section end
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 36, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(AppStrings.Playquiztogetherwithyourfriendsnow,
                          style: TextStyle(
                            fontSize: 20,
                            height: 1.6,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 14),
                        AppButton(
                          text: "Find Friends",
                          backgroundColor: Colors.white,
                          onPressed: () {},
                          borderRadius: 100,
                          width: 113,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          textColor:AppColors.primary,
                          height: 32,
                          shadowColor: Colors.white,
                        ),
                      ],
                  ),
                  ),
                ],
             ),
           ),
            //Discover Section
            const SizedBox(height: 16),
            ReusableQuizSection(
              title: AppStrings.discover,
              quizList: quizzes,
            ),
            //Top Author Section
            const SizedBox(height: 24),
             ItemTopAuthors(),
            //Top Collection Section
            const SizedBox(height: 24),
            ItemsTopCollection(),
            //Trending Quiz Section
            const SizedBox(height: 24),
            ReusableQuizSection(
              title:AppStrings.trendingquiz,
              quizList: quiz,
            ),
            // Top Picks
            const SizedBox(height: 24),
            ReusableQuizSection(
              title: AppStrings.toppicks,
              quizList: picks,
            ),
            SizedBox(height: 24,),
          ],
        ),

      ),
        //bottom navigation bar
        bottomNavigationBar: const CustomBottomNavBar(
          selectedIndex: 0,
    ),
    );
  }
}