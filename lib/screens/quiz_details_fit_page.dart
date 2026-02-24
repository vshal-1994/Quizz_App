import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_colors.dart';
import 'package:quiz_app/constants/app_strings.dart';

import '../buttons/button_primary_rounded.dart';
import '../custom_widgets/list_itemmap.dart';
import '../custom_widgets/profile_section.dart';
import '../custom_widgets/stats_container.dart';

class QuizDetailsFitPage extends StatelessWidget {
  const QuizDetailsFitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:Icon(Icons.close),
        title:SizedBox(),
        actions:[
          Icon(Icons.edit),
          SizedBox(width:16),
          Icon(Icons.star_border),
          SizedBox(width:16),
          Icon(Icons.more_horiz),
          SizedBox(width:24),

        ]
      ),
      body:SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 24.0, right: 24.0,bottom: 24),
          child: 
             Column(crossAxisAlignment: CrossAxisAlignment.start,
              children:[ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(16),
                child:AspectRatio(aspectRatio: 382/230,
                child:Image.asset("assets/images/imagebacktoschool.png",
                fit:BoxFit.cover,
                width:double.infinity)
                )
              ),
                SizedBox(height:20),
                Text(AppStrings.backtoschoolquixgame,style:TextStyle(fontSize:24,
                  fontWeight:FontWeight.bold,height:1.6,)),
                SizedBox(height:20),
                 Divider(
                  thickness: 1,
                  color: Color(0xFFE0E0E0),
                ),
                StatsSection(),
                 Divider(
                  thickness: 1,
                  color: Color(0xFFE0E0E0),
                ),
                ProfileSection(),
                Text(AppStrings.description,style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,height:1.6)),
                Text(AppStrings.longtext,style:TextStyle(fontSize:18,height:1.4,fontWeight:FontWeight.w600,)),
                SizedBox(height:24),
                Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children: [
                  Text(AppStrings.question10,style:TextStyle(fontSize:20,fontWeight:FontWeight.bold,height:1.6)),
                  Text(AppStrings.viewall,style:TextStyle(fontSize:18,fontWeight:FontWeight.bold,height:1.6,color:Color(0xFF6949FF))),
            
                ],),
                SizedBox(height:24),
                QuizListSection(),
                SizedBox(height:10),
                Row(children:[Expanded(
                  child: AppButton(
                    text:AppStrings.playsolo,
                    borderRadius: 100,
                    backgroundColor: AppColors.primaryLight,
                    fontSize:16,
                    fontWeight:FontWeight.bold,
                    shadowColor: Color(0xFFC3B6FF),
                    textColor: Color(0xFF6949FF),
                    onPressed: (){},
                    height:58
                  ),
                ),
                  SizedBox(width:36),
                  Expanded(
                    child: AppButton(
                        text:AppStrings.playwithfriends,
                        borderRadius: 100,
                        backgroundColor: AppColors.primary,
                        fontSize:16,
                        fontWeight:FontWeight.bold,
                        shadowColor: Colors.black,
                        textColor: Colors.white,
                        onPressed: (){},
                        height:58
                    ),
                  )

                ])
            
              ]
            ),
          ),
      ),
      );

  }
}