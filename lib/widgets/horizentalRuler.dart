import 'package:RoboDrop/widgets/homeRobo.dart';
import 'package:RoboDrop/widgets/mannequin.dart';
import 'package:RoboDrop/widgets/profile.dart';
import 'package:RoboDrop/widgets/skinColor.dart';
import 'package:RoboDrop/widgets/stylist.dart';
import 'package:date_format/date_format.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';
import 'Match.dart';

class HorizentalRuler extends StatefulWidget {
int currentIndex=0;

@override
State<HorizentalRuler> createState() => _HorizentalRulerState();

}
class _HorizentalRulerState extends State<HorizentalRuler> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),//0xFFE5E5E5),//  Colors.white,
        appBar: AppBar(
          elevation: 0,
            leading: BackButton(
                color: Colors.black
            ),
          backgroundColor: Color(0xFFFFFFFF),
          title:
          Text('',
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

          Positioned(
        top:250,
        left: 150,
        child:
                Text("65"
                    ,style: const TextStyle(fontSize: 34,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),
          Positioned(
            top:40,
            left: 24,
            child:
              Text("How much do you weigh?"
                  ,style: const TextStyle(fontSize: 22,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),
          Positioned(
            left: 40,
            bottom: 120,
            child:
            Container(
                child: SfLinearGauge(
                    minimum: 45,
                    maximum: 75.0,
                    markerPointers: [
                      LinearShapePointer(value: 60, height: 25, width: 25,
                          offset: 30,
                          shapeType: LinearShapePointerType.invertedTriangle,
                          position: LinearElementPosition.cross)
                    ])),
          ),
          // Positioned(
          //   left: 28,
          //   bottom: 40,
          //
          //   child:
          //     InkWell(
          //     onTap: () {
          //            Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //             builder: (context) => SkinColor(),
          //             ),
          //             );},child:
          //   Container(
          //       width: MediaQuery.of(context).size.width*0.85,
          //       height: 56,
          //       decoration: BoxDecoration(
          //         color:Color(0xFF869578) ,
          //         border:  Border.all(color: Colors.grey),
          //         borderRadius: BorderRadius.circular(12),
          //         //color:Colors.red,
          //         shape: BoxShape.rectangle,
          //       ),
          //       child:
          //       Row(
          //           mainAxisAlignment:
          //           MainAxisAlignment.center,
          //           crossAxisAlignment: CrossAxisAlignment.center,
          //           children: [
          //             Center(child:
          //
          //             Text(
          //               "Next",
          //               textAlign: TextAlign.center,
          //               style: const TextStyle(
          //                   fontFamily: 'DM Sans',
          //                   fontWeight: FontWeight.w500,
          //                   fontSize: 16 ,
          //                   color:Color(0xFFFFFFFF)//Colors.red  ,#30322F
          //                 //  fontWeight: FontWeight.bold,
          //               ),
          //             ),
          //             ),
          //             SizedBox(width: 12,),
          //             Image.asset(
          //               Assets.arrow3,
          //               height: 14,
          //               width: 20,
          //             )
          //
          //           ])
          //
          //   )),)

          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: MaterialButton(
                  onPressed: () => {},
                  child:

                  Padding(
                      padding:
                      EdgeInsets.only(
                          bottom:MediaQuery.of(context).size.height*0.04// 20
                      ),child:
                  Container(
                      width:  MediaQuery.of(context).size.width*0.85,
                      height: 56,
                      decoration: BoxDecoration(
                        color:Color(0xFF869578) ,
                        border:  Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12),
                        //color:Colors.red,
                        shape: BoxShape.rectangle,
                      ),
                      child:
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SkinColor(),
                              ),
                            );
                          },child:
                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(child:

                            Text(
                              "Next",
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
                      )
                  ))
              ),
            ),
          ),
]
    ));
  }

}
