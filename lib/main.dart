
import 'dart:ffi';

import 'package:RoboDrop/widgets/bottomSize.dart';
import 'package:RoboDrop/widgets/dressRoom.dart';
import 'package:RoboDrop/widgets/filter.dart';
import 'package:RoboDrop/widgets/homeRobo.dart';
import 'package:RoboDrop/widgets/outfit.dart';
import 'package:RoboDrop/widgets/profile.dart';
import 'package:RoboDrop/widgets/signUp.dart';
import 'package:RoboDrop/widgets/stylist.dart';
import 'package:RoboDrop/widgets/topSize.dart';
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
      title: 'Dalil IRan',
        onGenerateRoute: _appRouter.onGenerateRoute,

        initialRoute: '/',

      home:SignUp()//HomeRobo()//Filter()//Filter()//Profile()//Styist()//Styist()//SignUp()//Styist()//HomeRobo()//SignUp()//BottomSize()//TopSize()//SignUp()//Profile()//ShareSize()//Influencer()//Profile()//FirstPage()//WebViewApp()//FirstPage()// WebViewExample(),//FirstPage()//showData(),
    );
  }
}
