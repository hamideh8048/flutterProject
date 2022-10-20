
import 'package:RoboDrop/widgets/influencer.dart';
import 'package:RoboDrop/widgets/profile.dart';
import 'package:RoboDrop/widgets/shareSize.dart';
import 'package:RoboDrop/widgets/signUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {


      case '/influencers':
        return MaterialPageRoute(builder: (_) => Influencer());
        break;
      case '/share':
        return MaterialPageRoute(builder: (_) => ShareSize());
        break;
      case '/profile':
        return MaterialPageRoute(builder: (_) => Profile());
        break;
      default:
        return MaterialPageRoute(builder: (_) => SignUp());
    }
    void dispose() {}
  }
}