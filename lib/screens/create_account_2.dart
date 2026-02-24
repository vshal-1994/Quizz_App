import 'package:flutter/material.dart';
import '../buttons/button_primary_rounded.dart';
import '../custom_widgets/create_account_container.dart';

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
                "Describe a workplace\n that suits you",
                style: const TextStyle(
                  fontSize: 32,
                  height:1.6,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF212121),
                ),
              ),
              ])),
            SizedBox(height:16),
            Text("You can skip it if you're not sure",style:TextStyle(fontSize:18,height:1.2,
                color:Color(0xFF212121))),
            SizedBox(height:40),
            OptionCardWithCircle(title: "School",
              circleColor:Color(0xFF246BFD),
              sideContainerColor:Color(0XFF5089FD),
              imagePath:"assets/images/school.png"
            ),

            SizedBox(height:50),
            AppButton( text:"Skip",
              backgroundColor: Color(0xFFF0EDFF),
              onPressed: (){},
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