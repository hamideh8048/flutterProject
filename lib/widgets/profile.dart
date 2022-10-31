

import 'package:RoboDrop/widgets/influencer.dart';
import 'package:RoboDrop/widgets/quiz.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../constants/Assets.dart';

import 'package:RoboDrop/widgets/stylist.dart';

import 'closet.dart';
import 'homeRobo.dart';

class Profile extends StatefulWidget {

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int currentIndex = 0;
  bool _visible = false;
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF), //  Colors.white,
      body:

      Stack(
          children: [
            Container(
              constraints:
              BoxConstraints(minWidth: MediaQuery
                  .of(context)
                  .size
                  .width),
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              decoration: BoxDecoration(
                color: Color(0xFFE5E5E5),
              ),
              child:
              Padding(
                  padding:
                  const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child:
                  Column(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      children: [
                        Padding(
                            padding: const EdgeInsets.fromLTRB(
                                158, 65, 0, 0),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  Text(
                                    "Profile",
                                    style: const TextStyle(
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: Color(
                                            0xFF30322F) //Colors.red  ,#30322F
                                      //  fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 90,
                                  ),
                                  GestureDetector(
                                    child: Image.asset(
                                      Assets.popup, width: 24, height: 24,),
                                    onTap: () {
                                      setState(() {
                                        _visible=!_visible;
                                      });
                                      showMenu(
                                        color: Color(0xFFF4F5F2),
                                        context: context,
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20.0),
                                            )),
                                        position: RelativeRect.fromLTRB(
                                            0, MediaQuery.of(context).size.height*0.53, 0, 0),
                                        items: [
                                          PopupMenuItem(
                                              child:
                                              Padding(
                                                padding:
                                                const EdgeInsets.only(
                                                    left: 0, right: 0),
                                                child:
                                                Container(
                                                    width: MediaQuery
                                                        .of(context)
                                                        .size
                                                        .width,
                                                    height: 30,
                                                    child:

                                                    Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        crossAxisAlignment: CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 10),

                                                              child:
                                                              Container(

                                                                child:

                                                                Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                    crossAxisAlignment: CrossAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      Image
                                                                          .asset(
                                                                        Assets
                                                                            .setting,
                                                                        width: 18,
                                                                        height: 24,),
                                                                      SizedBox(
                                                                        width: 10,),
                                                                      Text(
                                                                        "Avatar Setting",
                                                                        style: const TextStyle(
                                                                            fontFamily: 'DM Sans',
                                                                            fontWeight: FontWeight
                                                                                .w700,
                                                                            fontSize: 16,
                                                                            color: Color(0xFF48553D) //Colors.red  ,#30322F
                                                                          //  fontWeight: FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                    ]

                                                                ),
                                                              )),

                                                          Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 10),

                                                              child:
                                                              Container(
                                                                child: Image
                                                                    .asset(
                                                                  Assets.arrow,
                                                                  width: 10,
                                                                  height: 14,),
                                                              ))

                                                        ])

                                                ),)
                                          ),
                                          PopupMenuItem(

                                            child: Container(
                                              //    color:Color(0xFFF4F5F2),
                                                width: 600,
                                                //MediaQuery.of(context).size.width,
                                                height: 30,
                                                child:

                                                Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                          const EdgeInsets.only(left: 10),
                                                          child:
                                                          Container(
                                                            child:
                                                            Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                crossAxisAlignment: CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Image.asset(
                                                                    Assets
                                                                        .preferences,
                                                                    width: 18,
                                                                    height: 24,),
                                                                  SizedBox(
                                                                    width: 10,),
                                                                  Text(
                                                                    "Preferences",
                                                                    style: const TextStyle(
                                                                        fontFamily: 'DM Sans',
                                                                        fontWeight: FontWeight
                                                                            .w700,
                                                                        fontSize: 16,
                                                                        color: Color(
                                                                            0xFF48553D) //Colors.red  ,#30322F
                                                                      //  fontWeight: FontWeight.bold,
                                                                    ),
                                                                  ),
                                                                ]

                                                            ),
                                                          )),

                                                      Padding(
                                                          padding:
                                                          const EdgeInsets.only(
                                                              left: 10),

                                                          child:
                                                          Container(
                                                            child: Image.asset(
                                                              Assets.arrow,
                                                              width: 10,
                                                              height: 14,),
                                                          ))

                                                    ])
                                            ),
                                          ),
                                          PopupMenuItem(

                                            child: Container(
                                              //    color:Color(0xFFF4F5F2),
                                                width: 600,
                                                //MediaQuery.of(context).size.width,
                                                height: 30,
                                                child:
                                                Row(

                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                          const EdgeInsets.only(
                                                              left: 10),

                                                            child:
                                                            InkWell(
                                                              onTap: () {
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder: (context) => Quiz(),
                                                                  ),
                                                                );

                                                              },child:
                                                                Container(
                                                        width: MediaQuery.of(context).size.width*0.5
                                                                  ,child:
                                                            Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                crossAxisAlignment: CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Image.asset(
                                                                    Assets.quiz,
                                                                    width: 18,
                                                                    height: 24,),
                                                                  SizedBox(
                                                                    width: 10,),
                                                                  Text("Quiz",
                                                                    style: const TextStyle(
                                                                        fontFamily: 'DM Sans',
                                                                        fontWeight: FontWeight
                                                                            .w700,
                                                                        fontSize: 16,
                                                                        color: Color(
                                                                            0xFF48553D) //Colors.red  ,#30322F
                                                                      //  fontWeight: FontWeight.bold,
                                                                    ),
                                                                  ),
                                                                ]

                                                            ),)
                                                          )),
                                                      Padding(
                                                          padding:
                                                          const EdgeInsets.only(
                                                              left: 10),
                                                          child:
                                                          Container(
                                                            child: Image.asset(
                                                              Assets.arrow,
                                                              width: 10,
                                                              height: 14,),
                                                          ))

                                                    ])

                                            ),
                                          ),
                                          PopupMenuItem(

                                            child: Container(
                                                width: 600,
                                                height: 30,
                                                child:
                                                Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment
                                                        .start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                          const EdgeInsets.only(
                                                              left: 10),

                                                          child:
                                                          InkWell(
                                                              onTap: () {
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(
                                                                    builder: (context) => Influencer(),
                                                                  ),
                                                                );

                                                              },child:
                                                          Container(
                                                            child:
                                                            Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                                crossAxisAlignment: CrossAxisAlignment
                                                                    .start,
                                                                children: [
                                                                  Image.asset(
                                                                    Assets.favorite,
                                                                    width: 18,
                                                                    height: 24,),
                                                                  SizedBox(
                                                                    width: 10,),
                                                                  Text("Favorite Influencers",
                                                                    style: const TextStyle(
                                                                        fontFamily: 'DM Sans',
                                                                        fontWeight: FontWeight
                                                                            .w700,
                                                                        fontSize: 16,
                                                                        color: Color(
                                                                            0xFF48553D) //Colors.red  ,#30322F
                                                                      //  fontWeight: FontWeight.bold,
                                                                    ),
                                                                  ),
                                                                ]

                                                            ),
                                                          ))),

                                                      Padding(
                                                          padding:
                                                          const EdgeInsets.only(
                                                              left: 10),

                                                          child:
                                                          Container(
                                                            child: Image.asset(
                                                              Assets.arrow,
                                                              width: 10,
                                                              height: 14,),
                                                          ))

                                                    ])

                                            ),
                                          ),
                                          PopupMenuItem(

                                            child: Container(
                                              //    color:Color(0xFFF4F5F2),
                                                width: 600,
                                                //MediaQuery.of(context).size.width,
                                                height: 30,
                                                child:
                                                InkWell(
                                                    onTap: () {
                                                      Navigator.of(context)
                                                          .pushNamed(
                                                        "/share",
                                                        // arguments: tripstarted
                                                      );
                                                    },
                                                    child:
                                                    Row(
                                                        mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                        crossAxisAlignment: CrossAxisAlignment
                                                            .start,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 10),

                                                              child:
                                                              Container(

                                                                child:

                                                                Row(
                                                                    mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                    crossAxisAlignment: CrossAxisAlignment
                                                                        .start,
                                                                    children: [
                                                                      Image
                                                                          .asset(
                                                                        Assets
                                                                            .share,
                                                                        width: 18,
                                                                        height: 24,),
                                                                      SizedBox(
                                                                        width: 10,),
                                                                      Text(
                                                                        "Share My Size",
                                                                        style: const TextStyle(
                                                                            fontFamily: 'DM Sans',
                                                                            fontWeight: FontWeight
                                                                                .w700,
                                                                            fontSize: 16,
                                                                            color: Color(
                                                                                0xFF48553D) //Colors.red  ,#30322F
                                                                          //  fontWeight: FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                    ]

                                                                ),
                                                              )),

                                                          Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .only(
                                                                  left: 10),

                                                              child:
                                                              Container(
                                                                child: Image
                                                                    .asset(
                                                                  Assets.arrow,
                                                                  width: 10,
                                                                  height: 14,),
                                                              )
                                                          )
                                                        ]))
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ]

                            )),
                        Padding(
                            padding:
                             EdgeInsets.fromLTRB(15, MediaQuery.of(context).size.width*0.1, 15, 0),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    Assets.female,
                                    height: 75,
                                    width: 75,
                                  ),
                                  //   Spacer(flex: 1),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  // Expanded(
                                  //   child:
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    //  MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      Text(
                                        "Debora Mihailovic",
                                        style: const TextStyle(
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 18,
                                            color: Color(
                                                0xFF48553D) //Colors.red  ,#30322F
                                          //  fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "@Debora.World",
                                        style: const TextStyle(
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 12,
                                            color: Color(
                                                0xFF869578) //Colors.red  ,#30322F
                                          //  fontWeight: FontWeight.bold,
                                        ),
                                      )

                                    ],
                                  ),
                                  SizedBox(width: 40,),
                                  Image.asset(
                                    Assets.pencil,
                                    height: 20,
                                    width: 20,
                                  ),
                                ]
                            )
                        ),
                        SizedBox(
                          height: 50,
                        )

                        , DottedBorder(
                          borderType: BorderType.RRect,
                          strokeWidth: 2,
                          radius: Radius.circular(12),
                          padding: EdgeInsets.all(0),
                          color: Color(0xFFD4583D),
                          child:
                          Container(
                              width: MediaQuery
                                  .of(context)
                                  .size
                                  .width * 0.85,
                              height: 101,
                              decoration: BoxDecoration(
                                //  border: Border.all(color: Colors.black87, width: 4),
                                borderRadius: BorderRadius.circular(16),
                                color: Color(0xFFFFCBB8),
                                shape: BoxShape.rectangle,
                              ),
                              child:
                              Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(15, 10, 0, 0),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .start, //  MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: [

                                        Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,
                                            children: [

                                              Container(
                                                  width: 60,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                    //  border: Border.all(color: Colors.black87, width: 4),
                                                    borderRadius: BorderRadius
                                                        .circular(10),
                                                    color: Color(0xFFD4583D),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:

                                                  Text(
                                                    "80%",
                                                    textAlign: TextAlign.center,
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight
                                                            .w500,
                                                        fontSize: 22,
                                                        color: Colors
                                                            .white //Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                              ),
                                              SizedBox(width: 90,),
                                              Text(
                                                "Complete your profile1",
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 12,
                                                    color: Color(
                                                        0xFF48553D) //Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              )

                                            ])
                                        ,

                                        Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment
                                                .center,
                                            children: [
                                              Text(
                                                "Complete",
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 12,
                                                    color: Color(
                                                        0xFFD5583D) //Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ),

                                              Container(
                                                  width: 210,
                                                  alignment: Alignment
                                                      .bottomCenter,
                                                  margin: EdgeInsets.only(left: 20,top:20,bottom: 20),
                                                  child: LinearProgressIndicator(
                                                    backgroundColor: Colors
                                                        .white,
                                                    value: 0.8,
                                                    semanticsValue: 'Compelete',
                                                    semanticsLabel: 'Compelete',
                                                    minHeight: 8,
                                                    valueColor: new AlwaysStoppedAnimation<
                                                        Color>(
                                                      Color(0xFFD4583D),),
                                                  ))

                                            ])
                                      ]
                                  ))


                          )
                          ,

                        )


                      ])

              ),

            ),
            // Visibility(
            // visible: _visible,child:
            // Positioned(
            // bottom: 100,
            // left: 5,
            //   child:
            //   Padding(
            //   padding:
            //   const EdgeInsets.fromLTRB(0, 0, 0, 0),
            //   child: Container(
            //   width: MediaQuery.of(context).size.width*0.95,
            //
            //   decoration: BoxDecoration(
            //       color: Color(0xFFFFFFFF),
            //   borderRadius: BorderRadius.all( Radius.circular(20))
            //   // topRight: Radius.circular(20),
            //   // topLeft: Radius.circular(20),
            //   ),child:
            //      // color: Color(0xFFF4F5F2),
            //
            //       Column(
            //           mainAxisAlignment:MainAxisAlignment.start,//  MainAxisAlignment.end,
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children:[
            //             SizedBox(height: 30,),
            //             Container(
            //                 child:
            //             Row(
            //                 mainAxisAlignment:
            //                 MainAxisAlignment
            //                     .spaceBetween,
            //                 crossAxisAlignment: CrossAxisAlignment
            //                     .start,
            //                 children: [
            //                       InkWell(
            //                           onTap: () {
            //                             Navigator.push(
            //                               context,
            //                               MaterialPageRoute(
            //                                 builder: (context) => Quiz(),
            //                               ),
            //                             );
            //
            //                           },child:
            //                     Padding(
            //                     padding:
            //                     const EdgeInsets.only(
            //                     left: 25),child:
            //                       Container(
            //                         child:
            //                       Row(
            //                           mainAxisAlignment:
            //                           MainAxisAlignment
            //                               .start,
            //                           crossAxisAlignment: CrossAxisAlignment
            //                               .start,
            //                           children: [
            //
            //                             Image.asset(
            //                               Assets.setting,
            //                               width: 18,
            //                               height: 24,),
            //                             SizedBox(
            //                               width: 10,),
            //                             Text("Avatar Setting",
            //                               style: const TextStyle(
            //                                   fontFamily: 'DM Sans',
            //                                   fontWeight: FontWeight
            //                                       .w700,
            //                                   fontSize: 16,
            //                                   color: Color(
            //                                       0xFF48553D) //Colors.red  ,#30322F
            //                                 //  fontWeight: FontWeight.bold,
            //                               ),
            //                             ),
            //                           ]
            //
            //                       ),))
            //                       ),
            //                         Padding(
            //                         padding:
            //                         const EdgeInsets.only(
            //                         right: 20),child:
            //                       Container(
            //                         child: Image.asset(
            //                           Assets.arrow,
            //                           width: 10,
            //                           height: 14,),
            //                       ))
            //
            //                 ])),
            //             SizedBox(height: 20,),
            //             Container(child: Row(
            //                     mainAxisAlignment:
            //                     MainAxisAlignment
            //                         .spaceBetween,
            //                     crossAxisAlignment: CrossAxisAlignment
            //                         .start,
            //                     children: [
            //                       InkWell(
            //                           onTap: () {
            //                             Navigator.push(
            //                               context,
            //                               MaterialPageRoute(
            //                                 builder: (context) => Quiz(),
            //                               ),
            //                             );
            //
            //                           },child:
            //                       Padding(
            //                           padding:
            //                           const EdgeInsets.only(
            //                               left: 25),child:
            //                       Container(
            //                         child:
            //                         Row(
            //                             mainAxisAlignment:
            //                             MainAxisAlignment
            //                                 .start,
            //                             crossAxisAlignment: CrossAxisAlignment
            //                                 .start,
            //                             children: [
            //
            //                               Image.asset(
            //                                 Assets.preferences,
            //                                 width: 18,
            //                                 height: 24,),
            //                               SizedBox(
            //                                 width: 10,),
            //                               Text("Preferences",
            //                                 style: const TextStyle(
            //                                     fontFamily: 'DM Sans',
            //                                     fontWeight: FontWeight
            //                                         .w700,
            //                                     fontSize: 16,
            //                                     color: Color(
            //                                         0xFF48553D) //Colors.red  ,#30322F
            //                                   //  fontWeight: FontWeight.bold,
            //                                 ),
            //                               ),
            //                             ]
            //
            //                         ),))
            //                       ),
            //                       Padding(
            //                           padding:
            //                           const EdgeInsets.only(
            //                               right: 20),child:
            //                       Container(
            //                         child: Image.asset(
            //                           Assets.arrow,
            //                           width: 10,
            //                           height: 14,),
            //                       ))
            //
            //                     ])),
            //             SizedBox(height: 20,),
            //             Container(
            //                 child:
            //                 Row(
            //                     mainAxisAlignment:
            //                     MainAxisAlignment
            //                         .spaceBetween,
            //                     crossAxisAlignment: CrossAxisAlignment
            //                         .start,
            //                     children: [
            //                       InkWell(
            //                           onTap: () {
            //                             Navigator.push(
            //                               context,
            //                               MaterialPageRoute(
            //                                 builder: (context) => Quiz(),
            //                               ),
            //                             );
            //
            //                           },child:
            //                       Padding(
            //                           padding:
            //                           const EdgeInsets.only(
            //                               left: 25),child:
            //                       Container(
            //                         child:
            //                         Row(
            //                             mainAxisAlignment:
            //                             MainAxisAlignment
            //                                 .start,
            //                             crossAxisAlignment: CrossAxisAlignment
            //                                 .start,
            //                             children: [
            //
            //                               Image.asset(
            //                                 Assets.quiz,
            //                                 width: 18,
            //                                 height: 24,),
            //                               SizedBox(
            //                                 width: 10,),
            //                               Text("Quiz",
            //                                 style: const TextStyle(
            //                                     fontFamily: 'DM Sans',
            //                                     fontWeight: FontWeight
            //                                         .w700,
            //                                     fontSize: 16,
            //                                     color: Color(
            //                                         0xFF48553D) //Colors.red  ,#30322F
            //                                   //  fontWeight: FontWeight.bold,
            //                                 ),
            //                               ),
            //                             ]
            //
            //                         ),))
            //                       ),
            //                       Padding(
            //                           padding:
            //                           const EdgeInsets.only(
            //                               right: 20),child:
            //                       Container(
            //                         child: Image.asset(
            //                           Assets.arrow,
            //                           width: 10,
            //                           height: 14,),
            //                       ))
            //
            //                     ])),
            //             SizedBox(height: 20,),
            //             Container(
            //                 child:
            //                 Row(
            //                     mainAxisAlignment:
            //                     MainAxisAlignment
            //                         .spaceBetween,
            //                     crossAxisAlignment: CrossAxisAlignment
            //                         .start,
            //                     children: [
            //                       InkWell(
            //                           onTap: () {
            //                             Navigator.push(
            //                               context,
            //                               MaterialPageRoute(
            //                                 builder: (context) => Quiz(),
            //                               ),
            //                             );
            //
            //                           },child:
            //                       Padding(
            //                           padding:
            //                           const EdgeInsets.only(
            //                               left: 25),child:
            //                       Container(
            //                         child:
            //                         Row(
            //                             mainAxisAlignment:
            //                             MainAxisAlignment
            //                                 .start,
            //                             crossAxisAlignment: CrossAxisAlignment
            //                                 .start,
            //                             children: [
            //
            //                               Image.asset(
            //                                 Assets.favorite,
            //                                 width: 18,
            //                                 height: 24,),
            //                               SizedBox(
            //                                 width: 10,),
            //                               Text("Favorite Influencers",
            //                                 style: const TextStyle(
            //                                     fontFamily: 'DM Sans',
            //                                     fontWeight: FontWeight
            //                                         .w700,
            //                                     fontSize: 16,
            //                                     color: Color(
            //                                         0xFF48553D) //Colors.red  ,#30322F
            //                                   //  fontWeight: FontWeight.bold,
            //                                 ),
            //                               ),
            //                             ]
            //
            //                         ),))
            //                       ),
            //                       Padding(
            //                           padding:
            //                           const EdgeInsets.only(
            //                               right: 20),child:
            //                       Container(
            //                         child: Image.asset(
            //                           Assets.arrow,
            //                           width: 10,
            //                           height: 14,),
            //                       ))
            //
            //                     ])),
            //             SizedBox(height: 20,),
            //             Container(
            //                 child:
            //                 Row(
            //                     mainAxisAlignment:
            //                     MainAxisAlignment
            //                         .spaceBetween,
            //                     crossAxisAlignment: CrossAxisAlignment
            //                         .start,
            //                     children: [
            //                       InkWell(
            //                           onTap: () {
            //                             Navigator.push(
            //                               context,
            //                               MaterialPageRoute(
            //                                 builder: (context) => Quiz(),
            //                               ),
            //                             );
            //
            //                           },child:
            //                       Padding(
            //                           padding:
            //                           const EdgeInsets.only(
            //                               left: 25,bottom: 20),child:
            //                       Container(
            //                         child:
            //                         Row(
            //                             mainAxisAlignment:
            //                             MainAxisAlignment
            //                                 .start,
            //                             crossAxisAlignment: CrossAxisAlignment
            //                                 .start,
            //                             children: [
            //
            //                               Image.asset(
            //                                 Assets.share,
            //                                 width: 18,
            //                                 height: 24,),
            //                               SizedBox(
            //                                 width: 10,),
            //                               Text("Share My Sizes",
            //                                 style: const TextStyle(
            //                                     fontFamily: 'DM Sans',
            //                                     fontWeight: FontWeight
            //                                         .w700,
            //                                     fontSize: 16,
            //                                     color: Color(
            //                                         0xFF48553D) //Colors.red  ,#30322F
            //                                   //  fontWeight: FontWeight.bold,
            //                                 ),
            //                               ),
            //                             ]
            //
            //                         ),))
            //                       ),
            //                       Padding(
            //                           padding:
            //                           const EdgeInsets.only(
            //                               right: 20),child:
            //                       Container(
            //                         child: Image.asset(
            //                           Assets.arrow,
            //                           width: 10,
            //                           height: 14,),
            //                       ))
            //
            //                     ]))
            //           ])
            //
            //   )
            //   )))

            Positioned(
                bottom: 0,
                right: 4,
                child:
                Padding(
                  padding:
                  const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                      width: MediaQuery
                          .of(context)
                          .size
                          .width * .98,
                      height: 42,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                        ),

                        color: Color(0xFFFFFFFF),
                        shape: BoxShape.rectangle,
                      ),
                      child:
                      Container()
                  ),)

            ),
          ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        //  selectedItemColor: Colors.red,
        backgroundColor:  Colors.black,//Color(0xFFFFFFFF),

        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon:   Image.asset(Assets.home,width: 20,height: 20, color: Colors.black,),//Icon(Icons.person),
            label: 'h',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Assets.book,width: 20,height: 20, color: Colors.black,),
            label: 'h',
          ),


          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFFF8D64) ,//currentIndex == 2 ? Colors.orange : Colors.transparent,
                  shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child:Image.asset(Assets.camera,width: 20,height: 20, color: Colors.white,),
              ),
            ),
            label:'',
          ),

          BottomNavigationBarItem(
            icon: Image.asset(Assets.rectangle,width: 20,height: 20, color: Colors.black,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Assets.personr,width: 20,height: 20, color: Colors.black,),
            label: '',
          ),
        ],
      ),


    );
  }
  void onTabTapped(int value) {
    currentIndex=value;
    switch(value)
    {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomeRobo(),
          ),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>Closet(),
          ),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Styist(),
          ),
        );
        break;
      case 4:
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Profile(),
          ),
        );
        break;
    }
  }

}
