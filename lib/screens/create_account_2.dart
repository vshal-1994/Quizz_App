import 'package:flutter/material.dart';
import '../buttons/button_primary_rounded.dart';
import '../constants/app_colors.dart';
import '../custom_widgets/create_account_container.dart';
import 'find_friends.dart';

class CreateAccountTwo extends StatelessWidget {
  const CreateAccountTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 24.0, right: 24.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Row(
                children: [
                  const Icon(Icons.arrow_back,size:28),
                  const SizedBox(width: 50),
                  SizedBox(width:200,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: LinearProgressIndicator(
                        value: 0.66,
                        minHeight: 8,
                        backgroundColor: Colors.grey.withValues(alpha: 0.2),
                        valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFF6949FF)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              Text.rich(
                TextSpan(
                    children:[
                      TextSpan(
                        text:
                        "Describe a workplace that suits you",
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF212121),
                        ),
                      ),
                      WidgetSpan(
                        alignment: PlaceholderAlignment.middle,
                        child: Transform.translate(
                          offset: const Offset(0, -6),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 6),
                            child: SizedBox(
                              height: 32,
                              width: 32,
                              child: Image.asset(
                                "assets/images/bag1.png",
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                      ),]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height:16),
              Text("You can skip it if you're not sure",style:TextStyle(fontSize:18,height:1.2,
                  color:Color(0xFF212121))),
              SizedBox(height:40),
              OptionCardWithCircle(title: "School",
                  circleColor:AppColors.lightBlue,
                  sideContainerColor: AppColors.DarkBlue,
                  imagePath:"assets/images/school.png"
              ),

              OptionCardWithCircle(title: "Higher Education",
                  circleColor:AppColors.lightYellow,
                  sideContainerColor: AppColors.DarkYellow,
                  imagePath:"assets/images/tickSquare.png"
              ),

              OptionCardWithCircle(title: "Teams",
                  circleColor:AppColors.lightGreen,
                  sideContainerColor: AppColors.DarkGreen,
                  imagePath:"assets/images/teams.png"
              ),
              OptionCardWithCircle(title: "Business",
                  circleColor:AppColors.lightRed,
                  sideContainerColor:AppColors.DarkRed,
                  imagePath:"assets/images/business.png"
              ),

              SizedBox(height:50),
              AppButton( text:"Skip",
                backgroundColor: Color(0xFFF0EDFF),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const FindFriendsScreen()),
                  );
                },
                borderRadius: 100,
                width:double.infinity,
                fontSize: 16,
                fontWeight:FontWeight.bold,
                textColor:Color(0xFF6949FF),
                height: 58,
                shadowColor: Color(0xFFC3B6FF),),



            ]),
      ),
    );
  }
}