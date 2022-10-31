import 'package:RoboDrop/widgets/homeRobo.dart';
import 'package:RoboDrop/widgets/horizentalRuler.dart';
import 'package:RoboDrop/widgets/mannequin.dart';
import 'package:RoboDrop/widgets/profile.dart';
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

class VerticalRuler extends StatefulWidget {
int currentIndex=0;

@override
State<VerticalRuler> createState() => _VerticalRulerState();

}
class _VerticalRulerState extends State<VerticalRuler> {
  String id=Assets.dress3;
  int currentIndex=0;
  bool _visible = false;
  void _toggle() {
    setState(() {
      _visible = !_visible;
    });}
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
        top:260,
        left: 24,
        child:
                Text("165"
                    ,style: const TextStyle(fontSize: 34,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),

          Positioned(
            top:40,
            left: 24,
            child:
              Text("How tall are you??"
                  ,style: const TextStyle(fontSize: 22,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),
          Positioned(
           right: 24,
            bottom: 180,
            child:
            Container(
                child: SfLinearGauge(
                    minimum: 140,
                    maximum: 185.0,
                    isAxisInversed: true,
                    //isMirrored: true,
                    orientation: LinearGaugeOrientation.vertical,
                    markerPointers: [
                      LinearShapePointer(value: 165, height: 25, width: 25,
                          offset: 30,
                          shapeType: LinearShapePointerType.invertedTriangle,
                          position: LinearElementPosition.cross)
                    ])),
          ),

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
    builder: (context) => HorizentalRuler(),
    ),
    );},child:
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
    )


          // Positioned(
          //   left: 28,
          //   bottom: 40,
          //   child:
          //   InkWell(
          //     onTap: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => HorizentalRuler(),
          //         ),
          //       );},child:
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
          //   ),))
]
    ));
  }

}
