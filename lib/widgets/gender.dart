import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';
import 'basicInfo.dart';


class Gender extends StatefulWidget {
  @override
  State<Gender> createState() => _GenderState();
}
class _GenderState extends State<Gender> {
int currentIndex=5;

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
                Text("What gender do you most  \t "
                    "identify with?", maxLines: 2
                    ,style: const TextStyle(fontSize:22,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),
              Padding(
                padding:
                const EdgeInsets.fromLTRB(24,0,24, 0),
                child:
                Text("Your input helps us better understand you."
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
                                  {
                                  setState(() {
                                    currentIndex=1;
                                  }
                                  );},child:
                                Container(
                                    width: 150,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color:currentIndex==1?Color(0xFFD4583D):Color (0xFFE5E7E4),//bgcolor,//Color(0xFFE5E7E4),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child:
                                    Center(child:
                                    Text('Male',
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
                                    const EdgeInsets.only(left: 18),
                                    child:
                                      GestureDetector(
                                      onTap: ()
                                      {
                                      setState(() {
                                        currentIndex=2;
                                      });},child:
                                    Container(
                                        width: 150,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(13),
                                          color: currentIndex==2?Color(0xFFD4583D):Color (0xFFE5E7E4),//bgFemale,
                                          shape: BoxShape.rectangle,
                                        ),
                                        child:
                                        Center(child:
                                        Text('Female',
                                          style:  TextStyle(
                                              fontFamily: 'DM Sans',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14 ,
                                              color:currentIndex==2?Color(0xFFF2F2F2):Color (0xFF30322F),//Colors.red  ,#30322F
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
                                {
                                  setState(() {
                                    currentIndex=3;
                                   }
                                  );
                                  },child:
                            Container(
                                width: 150,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(13),
                                  color:currentIndex==3?Color(0xFFD4583D):Color (0xFFE5E7E4),//bgNon,
                                  shape: BoxShape.rectangle,
                                ),
                                child:
                                Center(child:
                                Text('Non-binary',
                                  style:  TextStyle(
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14 ,
                                      color:currentIndex==3?Color(0xFFF2F2F2):Color (0xFF30322F),
                                    //  fontWeight: FontWeight.bold,
                                  ),
                                ))))

                            ,   Padding(
                                padding:
                                const EdgeInsets.only(left: 18,),
                                child:
                                GestureDetector(
                                    onTap: ()
                                    {
                                      setState(() {
                                        currentIndex=4;
                                      }
                                      );},child:
                                Container(
                                    width: 150,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color:currentIndex==4?Color(0xFFD4583D):Color (0xFFE5E7E4),
                                      //bgRather,
                                      shape: BoxShape.rectangle,
                                    ),
                                    child:

                                    Center(child:
                                    Text('Rather not say',
                                      style:  TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14 ,
                                          color:currentIndex==4?Color(0xFFF2F2F2):Color (0xFF30322F),//Colors.red  ,#30322F
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
        ,  Positioned(
            left: 28,
            bottom: 40,
            child:
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BasicInfo(),
                  ),
                );},child:
            Container(
                width: MediaQuery.of(context).size.width*0.85,
                height: 56,

                decoration: BoxDecoration(
                  color:Color(0xFF869578) ,
                  border:  Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(13),
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

            ),))
        ]));
  }
















}
