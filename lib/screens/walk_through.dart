import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/constants/app_strings.dart';
import '../buttons/button_primary_rounded.dart';
import '../constants/app_colors.dart';
import '../custom_widgets/indicator_func.dart';
import '../data/boarding_data.dart';
import 'create_account_2.dart';
class WalkThrough3 extends StatefulWidget {
  const WalkThrough3({super.key});

  @override
  State<WalkThrough3> createState() => _WalkThrough3State();
}

class _WalkThrough3State extends State<WalkThrough3> {
  final PageController _pageController = PageController();


   int _currentPage = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height:80),
                      Expanded(
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: walkthroughPages.length,

                          onPageChanged: (index) {
                            setState(() => _currentPage = index);
                          },
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                const SizedBox(height: 20),

                                SizedBox(
                                  height: 300,
                                  child: Image.asset(
                                    walkthroughPages[index].image,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                const SizedBox(height: 20),

                                Text(
                                  walkthroughPages[index].text,
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.nunito(
                                    fontSize: MediaQuery.of(context).size.width * 0.08,
                                    fontWeight: FontWeight.w800,
                                    color: AppColors.black,
                                    height: 1.5,
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),

                      SizedBox(height:10),
                      DotsIndicator(selectedIndex: _currentPage),
                      SizedBox(height:40),
                      AppButton(height:58,
                        width:double.infinity,
                        text:AppStrings.getStarted,
                        borderRadius:100,
                        backgroundColor:AppColors.primary,
                        fontSize: 16,
                        fontWeight:FontWeight.bold,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const CreateAccountTwo()),
                          );
                        },
                        textColor:AppColors.white,
                        shadowColor: AppColors.primary,

                      ),
                      SizedBox(height: 16),
                AppButton(height:58,
                    width:double.infinity,
                    text:AppStrings.alreadyHaveAccount,
                    borderRadius:100,
                    backgroundColor:AppColors.primaryLight,
                    fontSize: 16,
                    fontWeight:FontWeight.bold,
                    onPressed: (){},
                    shadowColor: AppColors.primaryLight,
                    textColor:AppColors.darkText),
                      SizedBox(height: 32)


                  ]
                )

            )));
  }
}