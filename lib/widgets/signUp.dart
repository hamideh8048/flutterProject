import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';


class SignUp extends StatelessWidget {
int currentIndex=0;
double googleHeight=500;
  @override
  Widget build(BuildContext context) {
  googleHeight=   MediaQuery.of(context).size.height*0.5;
    //final List<String> names = <String>["Share size for top", "Share size for bottom", "Share shoe size","Share whole body size"];
    return Scaffold(

      body:

    Stack(
        children: [
        Column(
        mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding:
                const EdgeInsets.fromLTRB(10,10,10,0),child:
              Container(
                height: MediaQuery.of(context).size.height*.95,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.cloth),
                    fit: BoxFit.cover,
                  ),
                ),
                child:  /* null  add child content here */


                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24,100,24,0),
                      child:
                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              Text("Let's Get Started"
                                  ,style: const TextStyle(fontSize: 22,fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,color: Color(0xFF0F172A))),
                            ]),

                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(24,15,4,0),
                      child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                              SizedBox(
                                width: 320,
                                child: Text(
                                  "Begin stylize yourself that you never exprienced before"
                                    ,style: const TextStyle(fontSize: 14,fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,color: Color(0xFF0F172A))
                     , maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
  ),]),),
                    Padding(
                      padding:  EdgeInsets.fromLTRB(24,googleHeight!,24,0),
                      child:
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                      Container(
                      width:  MediaQuery.of(context).size.width *0.85,
                        height: 56,
                        decoration: BoxDecoration(
                          //  border: Border.all(color: Colors.black87, width: 4),
                            border:  Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12),
                          //color:Colors.red,
                          shape: BoxShape.rectangle,
                        ),
                        child:
                        InkWell(
                            onTap: ()
                            {
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //     builder: (context) => HomeRobo(),
                              // ),
                              Navigator.of(context).pushNamed(
                                "/profile",
                                // arguments: tripstarted
                              );
                            },child:
                        Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                        Padding(
                        padding:  EdgeInsets.only(left:25,right: 25),
                          child:
                              Image.asset(Assets.google,width: 22,height: 22, ),),
                              Text(
                                "Continue with Google",
                                style: const TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16 ,
                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                  //  fontWeight: FontWeight.bold,
                                ),
                              )

                            ])
                    )
                      ),
                            SizedBox(
                              height: 16,
                            ),
                            Container(
                                width:  MediaQuery.of(context).size.width *0.85,
                                height: 56,
                                decoration: BoxDecoration(
                                  //  border: Border.all(color: Colors.black87, width: 4),
                                  border:  Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(12),
                                  //color:Colors.red,
                                  shape: BoxShape.rectangle,
                                ),
                                child:
                                Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:  EdgeInsets.only(left:25,right: 25),
                                        child:
                                        Image.asset(Assets.apple1,width: 22,height: 22, ),),
                                      Text(
                                        "Continue with Apple",
                                        style: const TextStyle(
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16 ,
                                            color:Color(0xFF30322F)//Colors.red  ,#30322F
                                          //  fontWeight: FontWeight.bold,
                                        ),
                                      )

                                    ])
                            )
     , SizedBox(
      height:46,
    ),
                  Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(left:50),
                                    child:

                                  Text(
                                    "Already have an account? Sign In",
                                    style: const TextStyle(
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14 ,
                                        color:Color(0xFF0F172A)//Colors.red  ,#30322F
                                      //  fontWeight: FontWeight.bold,
                                    ),
                                  )
                                  )
                                ])
                          ])),

                            ]),),






              )]
    )]

    ));
  }
















}
