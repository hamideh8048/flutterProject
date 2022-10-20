import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';


class BodySize extends StatelessWidget {
int currentIndex=0;

  @override
  Widget build(BuildContext context) {

    final List<String> names = <String>["2XS", "XS", "S","M","L","XL","2XL"];
    final List<Color> colors = <Color>[Color(0xFFE5E7E4), Color(0xFFE5E7E4), Color(0xFFFF8D64),Color(0xFFE5E7E4),Color(0xFFE5E7E4),Color(0xFFE5E7E4),Color(0xFFE5E7E4)];
    final List<Color> fontColors = <Color>[Color(0xFF4B4D49), Color(0xFF4B4D49), Color(0xFFF2F2F2),Color(0xFF4B4D49),Color(0xFF4B4D49),Color(0xFF4B4D49),Color(0xFF4B4D49)];

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),//0xFFE5E5E5),//  Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: BackButton(
              color: Colors.black
          ),
          backgroundColor: Color(0xFFFFFFFF),
          title: Text('Body Size',
            style: const TextStyle(
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
                fontSize: 18 ,
                color:Color(0xFF30322F)//Colors.red  ,#30322F
              //  fontWeight: FontWeight.bold,
            ),
          ),

        ),
      body:

    Stack(
        children: [

        Column(

        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              Padding(
                padding:
                const EdgeInsets.fromLTRB(10,31,15, 20),
                child:
                Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //SizedBox(height: 7),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 27,right: 15),
                        child:

                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                        Image.asset(
                          Assets.settingSize,
                          height: 20,
                          width: 20,
                        ),
                        SizedBox(width: 10,),
                        Text("Metric"
                            ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                      ])),

                      Padding(
                          padding:
                          const EdgeInsets.only(right: 20),
                          child:
                          Container(
                              width:  50,
                              height: 26,


                              child: FlutterSwitch(//Switch(
                                width: 50,
                                activeColor: Colors.grey,//primaryColor,
                                value:true,
                                // onChanged: (bool value) {
                                //
                                // }
                                onToggle: (bool value) {  },)

                          )
                      )
    ]),
              ),
              Padding(
                padding:
                const EdgeInsets.fromLTRB(10,31,10, 20),
                child:
                Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //SizedBox(height: 7),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 24,right: 15),
                        child:
                        Text("Neck Grith"
                            ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                      ),
                      Padding(
                      padding:
                      const EdgeInsets.only(right: 20),
                      child:
                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                      Container(
                          width:  60,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(4),
                              topLeft: Radius.circular(4.0),
                            ),
                           // borderRadius: BorderRadius.circular(4),
                            color:Color(0xFFE5E7E4),
                            shape: BoxShape.rectangle,
                          ),

                        child:
                            Center(child:
                                              Text(
                                                "47.2",
                                                textAlign: TextAlign.center,
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))),
                            Container(
                                width:  40,
                                height: 30,
                                decoration: BoxDecoration(
                                  //  border: Border.all(color: Colors.black87, width: 4),
                                  borderRadius: const BorderRadius.only(
                                    bottomRight: Radius.circular(4),
                                    topRight: Radius.circular(4.0),
                                  ),
                                 // borderRadius: BorderRadius.circular(4),
                                  color:Color(0xFF48553D),
                                  shape: BoxShape.rectangle,
                                ),

                                child:

                                Center(child:
                                Text(
                                  "IN",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14 ,
                                      color:Color(0xFFFFFFFF)//Colors.red  ,#30322F
                                    //  fontWeight: FontWeight.bold,
                                  ),
                                ))
                            )
                          ])
                      )

                    ]),
              ),

              Padding(
                padding:
                const EdgeInsets.fromLTRB(10,20,10, 20),
                child:
                Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //SizedBox(height: 7),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 24,right: 15),
                        child:
                        Text("Chest Grith"
                            ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                      ),
                      Padding(
                          padding:
                          const EdgeInsets.only(right: 20),
                          child:
                          Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width:  60,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(4),
                                        topLeft: Radius.circular(4.0),
                                      ),
                                      // borderRadius: BorderRadius.circular(4),
                                      color:Color(0xFFE5E7E4),
                                      shape: BoxShape.rectangle,
                                    ),

                                    child:
                                    Center(child:
                                    Text(
                                      "106",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14 ,
                                          color:Color(0xFF30322F)//Colors.red  ,#30322F
                                        //  fontWeight: FontWeight.bold,
                                      ),
                                    ))),
                                Container(
                                    width:  40,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      //  border: Border.all(color: Colors.black87, width: 4),
                                      borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(4),
                                        topRight: Radius.circular(4.0),
                                      ),
                                      // borderRadius: BorderRadius.circular(4),
                                      color:Color(0xFF48553D),
                                      shape: BoxShape.rectangle,
                                    ),

                                    child:

                                    Center(child:
                                    Text(
                                      "IN",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14 ,
                                          color:Color(0xFFFFFFFF)//Colors.red  ,#30322F
                                        //  fontWeight: FontWeight.bold,
                                      ),
                                    ))
                                )
                              ])
                      ),



                    ]),
              )

              ,Padding(
                padding:
                const EdgeInsets.fromLTRB(10,20,10, 20),
                child:
                Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //SizedBox(height: 7),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 24,right: 15),
                        child:
                        Text("Waist Grith"
                            ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                      ),


                      Padding(
                          padding:
                          const EdgeInsets.only(right: 20),
                          child:
                          Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width:  60,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(4),
                                        topLeft: Radius.circular(4.0),
                                      ),
                                      // borderRadius: BorderRadius.circular(4),
                                      color:Color(0xFFE5E7E4),
                                      shape: BoxShape.rectangle,
                                    ),

                                    child:
                                    Center(child:
                                    Text(
                                      "106",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14 ,
                                          color:Color(0xFF30322F)//Colors.red  ,#30322F
                                        //  fontWeight: FontWeight.bold,
                                      ),
                                    ))),
                                Container(
                                    width:  40,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      //  border: Border.all(color: Colors.black87, width: 4),
                                      borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(4),
                                        topRight: Radius.circular(4.0),
                                      ),
                                      // borderRadius: BorderRadius.circular(4),
                                      color:Color(0xFF48553D),
                                      shape: BoxShape.rectangle,
                                    ),

                                    child:

                                    Center(child:
                                    Text(
                                      "IN",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14 ,
                                          color:Color(0xFFFFFFFF)//Colors.red  ,#30322F
                                        //  fontWeight: FontWeight.bold,
                                      ),
                                    ))
                                )
                              ])
                      )

                    ]),
              )


              ,Padding(
                padding:
                const EdgeInsets.fromLTRB(10,20,10, 20),
                child:
                Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //SizedBox(height: 7),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 24,right: 15),
                        child:
                        Text("Stomach Grith"
                            ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                      ),


                      Padding(
                          padding:
                          const EdgeInsets.only(right: 20),
                          child:
                          Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width:  60,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(4),
                                        topLeft: Radius.circular(4.0),
                                      ),
                                      // borderRadius: BorderRadius.circular(4),
                                      color:Color(0xFFE5E7E4),
                                      shape: BoxShape.rectangle,
                                    ),

                                    child:
                                    Center(child:
                                    Text(
                                      "106",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14 ,
                                          color:Color(0xFF30322F)//Colors.red  ,#30322F
                                        //  fontWeight: FontWeight.bold,
                                      ),
                                    ))),
                                Container(
                                    width:  40,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      //  border: Border.all(color: Colors.black87, width: 4),
                                      borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(4),
                                        topRight: Radius.circular(4.0),
                                      ),
                                      // borderRadius: BorderRadius.circular(4),
                                      color:Color(0xFF48553D),
                                      shape: BoxShape.rectangle,
                                    ),

                                    child:

                                    Center(child:
                                    Text(
                                      "IN",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14 ,
                                          color:Color(0xFFFFFFFF)//Colors.red  ,#30322F
                                        //  fontWeight: FontWeight.bold,
                                      ),
                                    ))
                                )
                              ])
                      )

                    ]),
              )

              ,Padding(
                padding:
                const EdgeInsets.fromLTRB(10,20,10, 20),
                child:
                Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //SizedBox(height: 7),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 24,right: 15),
                        child:
                        Text("Hip Grith"
                            ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                      ),


                      Padding(
                          padding:
                          const EdgeInsets.only(right: 20),
                          child:
                          Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width:  60,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(4),
                                        topLeft: Radius.circular(4.0),
                                      ),
                                      // borderRadius: BorderRadius.circular(4),
                                      color:Color(0xFFE5E7E4),
                                      shape: BoxShape.rectangle,
                                    ),

                                    child:
                                    Center(child:
                                    Text(
                                      "106",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14 ,
                                          color:Color(0xFF30322F)//Colors.red  ,#30322F
                                        //  fontWeight: FontWeight.bold,
                                      ),
                                    ))),
                                Container(
                                    width:  40,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      //  border: Border.all(color: Colors.black87, width: 4),
                                      borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(4),
                                        topRight: Radius.circular(4.0),
                                      ),
                                      // borderRadius: BorderRadius.circular(4),
                                      color:Color(0xFF48553D),
                                      shape: BoxShape.rectangle,
                                    ),

                                    child:

                                    Center(child:
                                    Text(
                                      "IN",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14 ,
                                          color:Color(0xFFFFFFFF)//Colors.red  ,#30322F
                                        //  fontWeight: FontWeight.bold,
                                      ),
                                    ))
                                )
                              ])
                      )

                    ]),
              )

              ,Padding(
                padding:
                const EdgeInsets.fromLTRB(10,20,10, 20),
                child:
                Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //SizedBox(height: 7),
                      Padding(
                        padding:
                        const EdgeInsets.only(left: 24,right: 15),
                        child:
                        Text("Crotch Grith"
                            ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                      ),


                      Padding(
                          padding:
                          const EdgeInsets.only(right: 20),
                          child:
                          Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    width:  60,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(4),
                                        topLeft: Radius.circular(4.0),
                                      ),
                                      // borderRadius: BorderRadius.circular(4),
                                      color:Color(0xFFE5E7E4),
                                      shape: BoxShape.rectangle,
                                    ),

                                    child:
                                    Center(child:
                                    Text(
                                      "106",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14 ,
                                          color:Color(0xFF30322F)//Colors.red  ,#30322F
                                        //  fontWeight: FontWeight.bold,
                                      ),
                                    ))),
                                Container(
                                    width:  40,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      //  border: Border.all(color: Colors.black87, width: 4),
                                      borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(4),
                                        topRight: Radius.circular(4.0),
                                      ),
                                      // borderRadius: BorderRadius.circular(4),
                                      color:Color(0xFF48553D),
                                      shape: BoxShape.rectangle,
                                    ),

                                    child:

                                    Center(child:
                                    Text(
                                      "IN",
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14 ,
                                          color:Color(0xFFFFFFFF)//Colors.red  ,#30322F
                                        //  fontWeight: FontWeight.bold,
                                      ),
                                    ))
                                )
                              ])
                      )

                    ]),
              )

            ],

          ),

          Positioned(
          left: 28,
          bottom: 40,
    child:
    Container(
    width:  327,
    height: 56,

    decoration: BoxDecoration(
    color:Color(0xFF869578) ,
    border:  Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(12),
    //color:Colors.red,
    shape: BoxShape.rectangle,
    ),
    child:
    Row(
    mainAxisAlignment:
    MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Center(child:

    Text(
    "Done",
    textAlign: TextAlign.center,
    style: const TextStyle(
    fontFamily: 'DM Sans',
    fontWeight: FontWeight.w500,
    fontSize: 16 ,
    color:Color(0xFFFFFFFF)//Colors.red  ,#30322F
    //  fontWeight: FontWeight.bold,
    ),
    ),
    ),
    SizedBox(width: 12,),
    Image.asset(
    Assets.arrow3,
    height: 14,
    width: 20,
    )

    ])

    ),)

    ]
    ));
  }
















}
