import 'package:flutter/material.dart';
import 'package:quiz_app/constants/app_strings.dart';
import 'package:quiz_app/screens/waiting_for_players.dart';

import '../constants/app_colors.dart';
import '../custom_widgets/custom_searchbar.dart';
import '../custom_widgets/find_friends_container.dart';
import '../custom_widgets/people_youknow_tile.dart';
import '../data/dummy_data.dart';
import 'quiz_details_full.dart';

void navigateToQuizDetailPage(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const WaitingForPlayers ()),
  );
}

class FindFriendsScreen extends StatelessWidget {
  const FindFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sticky header (app bar)
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top + 32,
                left: 24.0,
                right: 24.0,
                bottom: 16,
              ),
              child: Row(
                children: [
                  Icon(Icons.arrow_back, size: 28),
                  SizedBox(width: 20),
                  Text(
                    AppStrings.findfriends,
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            // Scrollable content below header
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                  bottom: 48.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            CustomSearchBar(),
                  SizedBox(height:24),

                  
                  Container(
                      decoration: BoxDecoration(
                        color: AppColors.white,
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
                    Text(AppStrings.peopleyoumayknow,style:TextStyle(fontSize:24,fontWeight:FontWeight.bold,color:AppColors.black),
                    ),SizedBox(width:20),
                    Text(AppStrings.viewall,style:TextStyle(fontSize:18,fontWeight:FontWeight.bold,color:Color(0xFF6949FF)),
                    ),
                    SizedBox(width:12),
                    Icon(Icons.arrow_forward,size:18,color:Color(0xFF6949FF))
                  ]
                  ),
              
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: peopleYouMayKnowList.length,
                    itemBuilder: (context, index) {
                      final person = peopleYouMayKnowList[index];
                      return PeopleMayKnowTile(
                        name: person['name']!,
                        imagePath: person['imagePath']!,
                        onPressed: () => navigateToQuizDetailPage(context),
                      );
                    },
                  )

                ],
                ),
              ),
            ),
          ],
        ),
    );
  }
}