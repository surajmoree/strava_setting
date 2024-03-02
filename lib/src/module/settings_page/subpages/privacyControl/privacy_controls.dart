import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/additional_controls/aggregated_data.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/additional_controls/blocked_accountspage.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/additional_controls/edit_activities.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/additional_controls/map_visibility.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/additional_controls/messaging.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/additional_controls/personal_information.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/additional_controls/public_photos.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/where_you_appear/local_legends.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/where_you_appear/mentions.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/where_you_appear/profile.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/where_you_appear/activities.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/where_you_appear/flybys.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/where_you_appear/group_activity.dart';


class PrivacyControlPage extends StatefulWidget {
  const PrivacyControlPage({super.key});

  @override
  State<PrivacyControlPage> createState() => _PrivacyControlPageState();
}

class _PrivacyControlPageState extends State<PrivacyControlPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text(
          'Privacy Controls',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection:Axis.vertical ,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text(
                  'Where You Appear',
                  style: TextStyle(color: Colors.orange.shade900),
                ),
              ),
              GestureDetector(
                onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                },
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Text(
                        'Profile Page',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(18, 5, 0, 0),
                      child: Text(
                        'Who can see:',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ActivitesPage()));
                },
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Text(
                        'Activities',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text(
                        'Who can see:',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>GroupActivityPage()));
                },
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Text(
                        'Group Activities',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text(
                        'Who can see:',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FlybysPage()));
                },
                child: 
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Text('Flybys'),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text('who can see:',
                          style: TextStyle(color: Colors.grey.shade700),),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LocalLegendsPage()));
                },
                child: 
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Text('Local Legends'),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text('who can see:',
                          style: TextStyle(color: Colors.grey.shade700),),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => MentionPage())));
                },
                child: 
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Text('Mentions'),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text('who can mention:',
                          style: TextStyle(color: Colors.grey.shade700),),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                child: Text('Additional Controls',style: TextStyle(color: Colors.orange.shade900),),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>MessagePage()));
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                      child: Text('Messaging',style: TextStyle(fontSize: 16),),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
                      child: Text('who can message you:',style: TextStyle(color: Colors.grey.shade700),),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MapVisibilityPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: Text('Map visibility',style: TextStyle(fontSize: 16),),
                ),
              ),
               GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DataUsagePage()));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: Text('Agreegated Data Usage',style: TextStyle(fontSize: 16),),
                ),
              ),
               GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PublicPhotoPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: Text('Public Photos on Routes',style: TextStyle(fontSize: 16),),
                ),
              ),
               GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>EditActivitiesPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: Text('Edit Past Activities',style: TextStyle(fontSize: 16),),
                ),
              ),
               GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>BlockedPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: Text('Blocked Accounts',style: TextStyle(fontSize: 16),),
                ),
              ),
               GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>PersonalInformationPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                  child: Text('Do Not Share My Personal Information',style: TextStyle(fontSize: 16),),
                ),
              ),
              SizedBox(height: 10,),
              Divider(
                thickness: 0.5,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text('Privacy Help Center',style: TextStyle(color: Colors.orange.shade900),),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 20),
                  child: Text('Support articles on privacy',style: TextStyle(fontSize: 16),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  
}
