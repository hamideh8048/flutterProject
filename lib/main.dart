
import 'dart:ffi';

import 'package:RoboDrop/widgets/basicInfo.dart';
import 'package:RoboDrop/widgets/bodyShape.dart';
import 'package:RoboDrop/widgets/bottomSize.dart';
import 'package:RoboDrop/widgets/closet.dart';
import 'package:RoboDrop/widgets/closetItems.dart';
import 'package:RoboDrop/widgets/dressRoom.dart';
import 'package:RoboDrop/widgets/filter.dart';
import 'package:RoboDrop/widgets/gender.dart';
import 'package:RoboDrop/widgets/homeRobo.dart';
import 'package:RoboDrop/widgets/horizentalRuler.dart';
import 'package:RoboDrop/widgets/matchFinder.dart';
import 'package:RoboDrop/widgets/outfit.dart';
import 'package:RoboDrop/widgets/profile.dart';
import 'package:RoboDrop/widgets/quiz.dart';
import 'package:RoboDrop/widgets/ruler.dart';
import 'package:RoboDrop/widgets/signUp.dart';
import 'package:RoboDrop/widgets/sizes.dart';
import 'package:RoboDrop/widgets/skinColor.dart';
import 'package:RoboDrop/widgets/stylist.dart';
import 'package:RoboDrop/widgets/topSize.dart';
import 'package:RoboDrop/widgets/verticalRuler.dart';
import 'package:flutter/material.dart';
import 'app_theme.dart';
import 'router/app_router.dart';

void main() async {


  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ROB',
        onGenerateRoute: _appRouter.onGenerateRoute,

        initialRoute: '/',

      home: SignUp()//Closet()//MatchFinder()//ClosetItems()////SkinColor()//Sizes()//BodyShape()//Sizes()//SkinColor()//SignUp()//HorizentalRuler()//Ruler()//Gender()//BasicInfo()//Gender()//Quiz()//HomeRobo()//Filter()//Filter()//Profile()//Styist()//Styist()//SignUp()//Styist()//HomeRobo()//SignUp()//BottomSize()//TopSize()//SignUp()//Profile()//ShareSize()//Influencer()//Profile()//FirstPage()//WebViewApp()//FirstPage()// WebViewExample(),//FirstPage()//showData(),
    );
  }
}
