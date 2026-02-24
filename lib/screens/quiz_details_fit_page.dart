import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_strings.dart';

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
      body:Padding(
        padding: const EdgeInsets.only(top: 24, left: 24.0, right: 24.0),
        child: Column(
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

          ]
        ),
      ),
    );

  }
}