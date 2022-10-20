import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';


class TopSize extends StatelessWidget {
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
          title: Text('Top Size',
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
                const EdgeInsets.fromLTRB(26,31,15, 20),
                child:
                Text("Tops"
                    ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),
              Padding(
                      padding:
                      const EdgeInsets.fromLTRB(18,10,15, 0),
                      child:
                      Container(

                          height:90,
                         child:
                      ListView.builder(
                          scrollDirection: Axis.horizontal,

                          itemCount: names.length,
                          itemBuilder: (BuildContext context, int index) {

                            return Container(

                              child:
                                Column(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [


                                  Padding(
                                      padding:
                                      const EdgeInsets.only(left: 8),
                                      child:
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(

                                            color:colors[index], //Color(0xFFFF8D64) ,//currentIndex == 2 ? Colors.orange : Colors.transparent,
                                            shape: BoxShape.circle),
                                        child: Center(

                                          child:
                                          Text(

                                            names[index],
                                            textAlign: TextAlign.center,
                                            style:  TextStyle(
                                                fontFamily: 'DM Sans',
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12 ,
                                                color: fontColors[index],//Colors.red  ,##4B4D49
                                              //  fontWeight: FontWeight.bold,
                                            ),
                                          )
                                        ),
                                      )
                                  )
                                ]),
                            );
                          }
                      ))

                    ),
              Padding(
                padding:
                const EdgeInsets.fromLTRB(24,0,10, 0),child:
              Container(
                  width:  MediaQuery.of(context).size.width *0.87,
                  height: 91,
                  decoration: BoxDecoration(
                    //  border: Border.all(color: Colors.black87, width: 4),
                    border:  Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(12),
                    //color:Colors.red,
                    shape: BoxShape.rectangle,
                  ),
                  child:
                  Column(

                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                  Row(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 30),
                        Center(
                          child:
                        Text(
                          "Size Guide",
                          style: const TextStyle(
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              fontSize: 12 ,
                              color:Color(0xFF869578)//:Color(0xFF869578)//Colors.red  ,#30322F
                            //  fontWeight: FontWeight.bold,
                          ),
                        ))

                      ]),
                        Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 7),
                              Padding(
                                  padding:
                                  const EdgeInsets.only(left: 65,right: 65),
                                  child:
                                  Text(
                                    "US",
                                    style: const TextStyle(
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12 ,
                                        color:Color(0xFF869578)//:Color(0xFF869578)//Colors.red  ,#30322F
                                      //  fontWeight: FontWeight.bold,
                                    ),
                                  ),

                              ),
                              Text(
                                "EU",
                                style: const TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12 ,
                                    color:Color(0xFF869578)//:Color(0xFF869578)//Colors.red  ,#30322F
                                  //  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 65,),
                                child:
                                Text(
                                  "KR",
                                  style: const TextStyle(
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12 ,
                                      color:Color(0xFF869578)//:Color(0xFF869578)//Colors.red  ,#30322F
                                    //  fontWeight: FontWeight.bold,
                                  ),
                                ),

                              ),
                            ]),
                        Divider(
                          indent: 44,
                          endIndent: 44,
                          color: Colors.black,
                        ),
                        Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(height: 12),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 52,right: 53),
                                child:
                                Text(
                                  "36-40",
                                  style: const TextStyle(
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12 ,
                                      color:Color(0xFF869578)//:Color(0xFF869578)//Colors.red  ,#30322F
                                    //  fontWeight: FontWeight.bold,
                                  ),
                                ),

                              ),
                              Text(
                                "46-48",
                                style: const TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 12 ,
                                    color:Color(0xFF869578)//:Color(0xFF869578)//Colors.red  ,#30322F
                                  //  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.only(left: 55,),
                                child:
                                Text(
                                  "95",
                                  style: const TextStyle(
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12 ,
                                      color:Color(0xFF869578)//:Color(0xFF869578)//Colors.red  ,#30322F
                                    //  fontWeight: FontWeight.bold,
                                  ),
                                ),

                              ),
                            ]),

                  ])
              ))
            ],

          )
          , Positioned(
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
