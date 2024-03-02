//import 'dart:js';





import 'package:strava_clone/src/module/challenges/brookchallenge/pages/brook_pages.dart';
import 'package:strava_clone/src/module/challenges/challengefirst/pages/challengefirst_pages.dart';
import 'package:strava_clone/src/module/challenges/challengesecond/challenge.dart';
import 'package:strava_clone/src/module/counter/contact/pages/contact_page.dart';
import 'package:strava_clone/src/module/counter/facebook/pages/facebook_page.dart';

import 'package:strava_clone/src/module/details/pages/detail_page.dart';
import 'package:strava_clone/src/module/group/Active/pages/activepages.dart';
import 'package:strava_clone/src/module/group/Challenges/challenge.dart';
import 'package:strava_clone/src/module/group/Challenges/createchallenge/pages/createchallenge_page.dart';
import 'package:strava_clone/src/module/group/Challenges/subscribe/pages/subscribe_pages.dart';
import 'package:strava_clone/src/module/group/Club/pages/clubpages.dart';
import 'package:strava_clone/src/module/internet/pages/offline_page.dart';
// import 'package:strava_clone/src/module/sign-up/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:strava_clone/src/module/login/pages/login_pages.dart';
import 'package:strava_clone/src/module/messages/createmessage/pages/createmsg_page.dart';
import 'package:strava_clone/src/module/messages/messaging/pages/messaging_page.dart';
import 'package:strava_clone/src/module/messages/pages/messagepage.dart';
import 'package:strava_clone/src/module/portfolio/portfolio.dart';
import 'package:strava_clone/src/module/record/pages/record_pages.dart';
import 'package:strava_clone/src/module/record/phone/pages/phone_page.dart';
import 'package:strava_clone/src/module/settings_page/setting.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/additional_controls/messaging.dart';
import 'package:strava_clone/src/module/sign-up/sign_up.dart';
import 'package:strava_clone/src/module/profile/pages/editinfo_page.dart';
import 'package:strava_clone/src/module/profile/pages/you_pages.dart';
import 'package:strava_clone/src/module/welcome/pages/welcome_page.dart';

import '../../module/counter/search/pages/search_page.dart';
import '../../module/module.dart';
import '../../module/signup/pages/signup_pages.dart';

class AppRouter {
  final CounterCubit _counterCubit = CounterCubit();
  final SettingsCubit _settingsCubit = SettingsCubit();
  final SearchBloc _searchBloc = SearchBloc();

  Route? onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
     case '/':return MaterialPageRoute(builder: ((context)=>MySignUp()));
 case '/login':return MaterialPageRoute(builder: (context)=>LoginPage());
      case '/home_screen':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const HomeScreen(
                title: 'Home Screen', color: Colors.amberAccent),
          ),
        );
        case '/challenge':return MaterialPageRoute(builder: (context)=>ChallengePage(title:"challenge",));
      case '/second':
        return MaterialPageRoute(
          builder: (_) => BlocProvider.value(
            value: _counterCubit,
            child: const SecondScreen(
                title: 'Second Screen', color: Colors.blueAccent),
          ),
        );
        case '/search':return MaterialPageRoute(builder: (context)=>SearchPage(title: 'search',));
        case '/record':return MaterialPageRoute(builder: (context)=>RecordPage());
        case '/message':return MaterialPageRoute(builder: (context)=>MessagePageNew());
        case '/editinfo':return MaterialPageRoute(builder: (context)=>editinfo_page());
        case '/you':return MaterialPageRoute(builder: (context)=>YouScreen(title: "Profile"));
        case '/portfolio':return MaterialPageRoute(builder: (context)=>PortfolioPage(title:"you"));
      case '/third':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _counterCubit,
                  child: const ThirdScreen(
                    title: 'Third Screen',
                    color: Colors.deepPurpleAccent,
                  ),
                ));
                case '/subscribe':return MaterialPageRoute(builder: (context)=>SubscribePage());
                case '/createchallenge':return MaterialPageRoute(builder: (context)=>CreateChallengePage());
                case '/phone':return MaterialPageRoute(builder: (context)=>PhoneScreen());
                 case '/brook':return MaterialPageRoute(builder: (context)=>BrookChallenge());
                case '/detail':return MaterialPageRoute(builder: (context)=>DetailPage());
                case '/welcome':return MaterialPageRoute(builder: (context)=>WelcomePage());
                case '/createmsg':return MaterialPageRoute(builder: (context)=>CreateMessage());
                case '/messaging' :return MaterialPageRoute(builder: (context)=>MessagingPage());
      // case '/sign-in':
      //   return MaterialPageRoute(builder: ((context) => const SignInPage()));
      // case '/sign-up':
      //   return MaterialPageRoute(builder: ((context) => const SignUpPage()));
      //case '/note':return MaterialPageRoute(builder: (context)=>LoginPage());
      case '/active':return MaterialPageRoute(builder: (context)=>ActivePage(title: "active"));
        case '/club':return MaterialPageRoute(builder: (context)=>ClubPage(title: "club"));
      case '/settingPage': return MaterialPageRoute(builder: (context)=>SettingPage());
      case '/timer':
        return MaterialPageRoute(builder: ((context) => const TimerPage()));
      case '/offline':
        return MaterialPageRoute(builder: ((context) => const OfflinePage()));
      case '/search':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _searchBloc,
                  child: const SearchPageNew(),
                ));
                case '/contact':return MaterialPageRoute(builder: (context)=>ContactPage(title: "contact"));
      case '/settings':
        return MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _settingsCubit,
                  child: const SettingsPage(),
                ));
      case '/settings_page':
        return MaterialPageRoute(builder: (context) => const SettingPage());
        case '/facebook':return MaterialPageRoute(builder: (context)=>FacebookPage(title: "facebook"));
//case '/routing':MaterialPageRoute(builder: (context) => const Routing)
case '/challengefirst' :return MaterialPageRoute(builder:(context)=>ChallengeFirstPage());
case '/challengesecond' :return MaterialPageRoute(builder: (context)=>ChallengeSecondPage());
      default:
        return null;
    }
  }

  void dispose() {
    _counterCubit.close();
  }
}
