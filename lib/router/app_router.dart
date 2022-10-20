// TODO Implement this library.import 'package:flutter/cupertino.dart';
import 'package:RoboDrop/widgets/bottomSize.dart';
import 'package:RoboDrop/widgets/outfit.dart';
import 'package:RoboDrop/widgets/shoeSize.dart';
import 'package:flutter/material.dart';


import '../widgets/bodySize.dart';
import '../widgets/influencer.dart';
import '../widgets/profile.dart';
import '../widgets/shareSize.dart';
import '../widgets/topSize.dart';

class AppRouter {
  Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      // case '/':
      //   return MaterialPageRoute(
      //     //splashscreen
      //       builder: (_) => FirstPage());
      //   break;

      case '/influencers':
        return MaterialPageRoute(builder: (_) => Influencer());
        break;
      case '/outfit':
        return MaterialPageRoute(builder: (_) => Outfit(id: 'Assets.dress4',),settings: routeSettings);
        break;
      case '/share':
        return MaterialPageRoute(builder: (_) => ShareSize());
        break;
      case '/profile':
        return MaterialPageRoute(builder: (_) => Profile());
        break;
      case '/bodySize':
        return MaterialPageRoute(builder: (_) => BodySize());
        break;
      case '/topSize':
        return MaterialPageRoute(builder: (_) => TopSize());
        break;
      case '/bottomSize':
        return MaterialPageRoute(builder: (_) => BottomSize());
        break;
      case '/shoeSize':
        return MaterialPageRoute(builder: (_) => ShoeSize());
        break;
      default:
        return MaterialPageRoute(builder: (_) => Profile());
    }
//     void dispose() {}
  }
}