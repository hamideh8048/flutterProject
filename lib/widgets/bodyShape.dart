import 'package:RoboDrop/widgets/sizes.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';
import 'basicInfo.dart';


class BodyShape extends StatefulWidget {
  @override
  State<BodyShape> createState() => _BodyShapeState();
}
class _BodyShapeState extends State<BodyShape> {
int currentIndex=6;
bool _visible = false;
@override
void initState() {
  super.initState();
}
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
          title: Text(' ',
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
                const EdgeInsets.fromLTRB(26,31,15, 10),
                child:
                Text("What is your body shape??"
                    ,style: const TextStyle(fontSize:22,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),

              Padding(
                padding:
                const EdgeInsets.fromLTRB(24,0,24, 0),
                child:
                Text("You can see more users with similar  \t  body shapes as you put more detailed information."
                 , maxLines: 2
                    ,style: const TextStyle(fontSize: 14,fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,color: Colors.grey,fontWeight: FontWeight.w400,)),),

              Padding(
                padding:
                const EdgeInsets.fromLTRB(24,50,0, 0),
                child:
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding:
                      const EdgeInsets.only(left: 0,right: 0,top:10,bottom: 0),
                      child:
                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Padding(
                          padding:
                          const EdgeInsets.only(left: 0,right: 0,top:10,bottom: 10),
                          child:
                          Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  GestureDetector(
                                  onTap: ()
                                  {_visible=true;
                                  setState(() {
                                    currentIndex=1;
                                  }
                                  );},child:
                                Container(
                                    width: 102,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color:currentIndex==1?Color(0xFFD4583D):Color (0xFFE5E7E4),//bgcolor,//Color(0xFFE5E7E4),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child:
                                    Center(child:
                                    Text('Diamond',
                                      style:  TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14 ,
                                          color:currentIndex==1?Color(0xFFF2F2F2):Color (0xFF30322F),//Color(0xFF30322F)
                                        //  fontWeight: FontWeight.bold,
                                      ),
                                    )))),

                                     Padding(
                                    padding:
                                    const EdgeInsets.only(left: 10),
                                    child:
                                      GestureDetector(
                                      onTap: ()
                                      {_visible=true;
                                      setState(() {
                                        currentIndex=2;
                                      });},child:
                                    Container(
                                        width: 107,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(13),
                                          color: currentIndex==2?Color(0xFFD4583D):Color (0xFFE5E7E4),//bgFemale,
                                          shape: BoxShape.rectangle,
                                        ),
                                        child:
                                        Center(child:
                                        Text('Hourglass',
                                          style:  TextStyle(
                                              fontFamily: 'DM Sans',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14 ,
                                              color:currentIndex==2?Color(0xFFF2F2F2):Color (0xFF30322F),//Colors.red  ,#30322F
                                            //  fontWeight: FontWeight.bold,
                                          ),
                                        )
                                        )))
                                ),
                                Padding(
                                    padding:
                                    const EdgeInsets.only(left: 10),
                                    child:
                                    GestureDetector(
                                        onTap: ()
                                        {_visible=true;
                                          setState(() {
                                            currentIndex=3;
                                          });},child:
                                    Container(
                                        width: 94,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(13),
                                          color: currentIndex==3?Color(0xFFD4583D):Color (0xFFE5E7E4),//bgFemale,
                                          shape: BoxShape.rectangle,
                                        ),
                                        child:
                                        Center(child:
                                        Text('Triangle',
                                          style:  TextStyle(
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14 ,
                                            color:currentIndex==3?Color(0xFFF2F2F2):Color (0xFF30322F),//Colors.red  ,#30322F
                                            //  fontWeight: FontWeight.bold,
                                          ),
                                        )
                                        )))
                                )
                              ] )

                      )

                          ]))
                  ,Padding(
                      padding:
                      const EdgeInsets.only(left: 0,right: 0,top:0,bottom: 10),
                      child:
                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                                onTap: ()
                                {_visible=true;
                                  setState(() {
                                    currentIndex=4;
                                   }
                                  );
                                  },child:
                            Container(
                                width: 154,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color:currentIndex==4?Color(0xFFD4583D):Color (0xFFE5E7E4),//bgNon,
                                  shape: BoxShape.rectangle,
                                ),
                                child:
                                Center(child:
                                Text('Inverted Triangle',
                                  style:  TextStyle(
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14 ,
                                      color:currentIndex==4?Color(0xFFF2F2F2):Color (0xFF30322F),
                                    //  fontWeight: FontWeight.bold,
                                  ),
                                ))))

                            ,   Padding(
                                padding:
                                const EdgeInsets.only(left: 18,),
                                child:
                                GestureDetector(
                                    onTap: ()
                                    {_visible=true;
                                      setState(() {
                                        currentIndex=5;
                                      }
                                      );},child:
                                Container(
                                    width: 108,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color:currentIndex==5?Color(0xFFD4583D):Color (0xFFE5E7E4),
                                      //bgRather,
                                      shape: BoxShape.rectangle,
                                    ),
                                    child:

                                    Center(child:
                                    Text('Rectangle',
                                      style:  TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14 ,
                                          color:currentIndex==5?Color(0xFFF2F2F2):Color (0xFF30322F),//Colors.red  ,#30322F
                                        //  fontWeight: FontWeight.bold,
                                      ),
                                    )
                                    )))
                            )


                          ] )



                  )
                ])),

        ]
    )
          ,Visibility(
          visible: _visible,child:
           Positioned(
              left: 38,
              bottom: 140,
              child:

              Container(
                  width:  300,
                  height: 300,
                  child:
                        Center(child:
                        Image.asset(
                          Assets.femalebody,
                          height: 300,
                          width: 300,
                        )

              ),))),

            //   Positioned(
            // left: 28,
            // bottom:   MediaQuery.of(context).size.height*0.3,
            // child:
            // InkWell(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(
            //         builder: (context) => Sizes(),
            //       ),
            //     );},child:
            // Container(
            //     width: MediaQuery.of(context).size.width*0.85,
            //     height: 56,
            //
            //     decoration: BoxDecoration(
            //       color:Color(0xFF869578) ,
            //       border:  Border.all(color: Colors.grey),
            //       borderRadius: BorderRadius.circular(13),
            //       //color:Colors.red,
            //       shape: BoxShape.rectangle,
            //     ),
            //     child:
            //     Row(
            //         mainAxisAlignment:
            //         MainAxisAlignment.center,
            //         crossAxisAlignment: CrossAxisAlignment.center,
            //         children: [
            //           Center(child:
            //
            //           Text(
            //             "Next",
            //             textAlign: TextAlign.center,
            //             style: const TextStyle(
            //                 fontFamily: 'DM Sans',
            //                 fontWeight: FontWeight.w500,
            //                 fontSize: 16 ,
            //                 color:Color(0xFFFFFFFF)//Colors.red  ,#30322F
            //               //  fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //           ),
            //           SizedBox(width: 12,),
            //           Image.asset(
            //             Assets.arrow3,
            //             height: 14,
            //             width: 20,
            //           )
            //
            //         ])
            //
            // ),))

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
                                        builder: (context) => Sizes(),
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


        ]));
  }
















}
