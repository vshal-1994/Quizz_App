import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:quiz_app/constants/app_colors.dart';
import 'package:quiz_app/constants/app_strings.dart';

import '../custom_widgets/myprofile_achievement_container.dart';
import '../custom_widgets/myprofile_statistics_chartcontainer.dart';

class MyProfileStatistics extends StatelessWidget{
  const MyProfileStatistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          backgroundColor:AppColors.white,
        leading:Padding(
          padding: const EdgeInsets.only(left:20.0),
          child: Icon(Icons.arrow_back,size:24),
        ),
        title:Text(AppStrings.myStatistics,style:TextStyle
          (color:AppColors.black,fontSize:24,fontWeight: FontWeight.bold,height:1.6)),
        actions: [Padding(
          padding: const EdgeInsets.only(right:24.0),
          child: Icon(MdiIcons.dotsHorizontalCircleOutline,size:24),
        )],
    ),
      body:Container(decoration: BoxDecoration(color:AppColors.white),
        child: Padding(
          padding: const EdgeInsets.only(top:16,left:24,right:24),
          child: Column(crossAxisAlignment:CrossAxisAlignment.start,
            children:[
              QuizPointsChart(),
              SizedBox(height:16),
              Text(AppStrings.yourachievement,style:
              TextStyle(fontSize:24,fontWeight:FontWeight.bold,color:AppColors.black)),
              SizedBox(height:16),
              Expanded(child:MyProfileAchievementContainer(),)


            ]
          ),
        ),
      )
    );

  }
}