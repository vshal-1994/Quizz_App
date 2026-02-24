import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_strings.dart';

import '../custom_widgets/find_friends_container.dart';
import '../custom_widgets/people_youknow_tile.dart';

class FindFriendsScreen extends StatelessWidget {
  const FindFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(

          child: Padding(
            padding: EdgeInsets.only(
              top: 80,
              left: 24.0,
              right: 24.0,
              bottom: 48.0,
            ),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
            children: [
            Icon(Icons.arrow_back, size: 28),
            SizedBox(width: 20),
            Text(
              AppStrings.findfriends,
              style: TextStyle(fontSize: 24,fontFamily: 'Nunito', fontWeight:FontWeight.bold),
            ),
            ],
          ),
                SizedBox(height:24),
            Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search, color: Colors.grey),
                      hintText:AppStrings.searchbar,
                      hintStyle: TextStyle(color:Color(0xFFBDBDBD), fontSize: 16,height:1.4),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 15),
                    ),)
            ),
                  SizedBox(height:24),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withValues(alpha: 0.02),
                            blurRadius: 10,
                            offset: const Offset(0, 4),
                          ),
                        ],
                        border: Border.all(color: Colors.grey.shade300),
                      ),
                  child:Column(mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomActionCard(
                        imagePath: 'assets/images/booklogo.png',
                        title: AppStrings.searchcontact,
                        subtitle: AppStrings.findfriendsbynumber,
                      ),
                      Divider(height: 1, indent: 20,
                        endIndent: 20,),
                      CustomActionCard(
                    imagePath: 'assets/images/facebooklogo.png',
                    title: AppStrings.connecttofacebook,
                    subtitle: AppStrings.findcontactsbyfacebook,
                  ),
                      Divider(height: 1, indent: 20,
                        endIndent: 20,),
                  CustomActionCard(
                    imagePath: 'assets/images/featherlogo.png',
                    title: AppStrings.invitefriends,
                    subtitle: AppStrings.invitefriendstoplaytogether,
                  ),])
                  ),
                SizedBox(height:24),
                  Row(children:[
                    Text(AppStrings.peopleyoumayknow,style:TextStyle(fontSize:24,fontWeight:FontWeight.bold,color:Color(0xFF212121)),
                    ),SizedBox(width:20),
                    Text(AppStrings.viewall,style:TextStyle(fontSize:18,fontWeight:FontWeight.bold,color:Color(0xFF6949FF)),
                    ),
                    SizedBox(width:12),
                    Icon(Icons.arrow_forward,size:18,color:Color(0xFF6949FF))
                  ]
                  ),
                  SizedBox(height:24),
                  Column(children: [
                    PeopleMayKnowTile(name: AppStrings.dorrankulikowski,
                      imagePath: "assets/images/darron.png",
                      onPressed: () {},),

                    PeopleMayKnowTile(name: AppStrings.marryland,
                      imagePath: "assets/images/marryland.png",
                      onPressed: () {},),
                    PeopleMayKnowTile(name: AppStrings.laurale,
                      imagePath: "assets/images/lauralee.png",
                      onPressed: () {},),

                    PeopleMayKnowTile(name: AppStrings.alfanzo,
                      imagePath: "assets/images/darron.png",
                      onPressed: () {},),
                    PeopleMayKnowTile(name: "Alfanzo Schuessler",
                      imagePath: "assets/images/darron.png",
                      onPressed: () {},),

                  ],

                  )



                ])
    )));
  }}