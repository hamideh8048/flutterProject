import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';
import 'gender.dart';


class Quiz extends StatelessWidget {
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
                const EdgeInsets.fromLTRB(26,31,15, 20),
                child:
                Text("What is your name?"
                    ,style: const TextStyle(fontSize: 22,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),

              Padding(
                padding:
                const EdgeInsets.fromLTRB(24,0,24, 0),
                child:
                Text("It's nice to meet you"
                    ,style: const TextStyle(fontSize: 14,fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,color: Colors.grey)),),

              Padding(
                padding:
                const EdgeInsets.fromLTRB(24,50,24, 0),
                child:
                Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

               TextField(
                 style:  const TextStyle(fontSize: 22,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, ),
                decoration:
                 new InputDecoration(
                   labelStyle:    const TextStyle(fontSize: 22,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, ),
                border: InputBorder.none,
                hintText: 'e.g.Mark',
                hintStyle:const TextStyle(fontSize: 16,fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,color: Colors.grey)),
                    )
                  ,
                 Padding(
    padding:
    const EdgeInsets.only(top: 0),
    child:
                Divider(
                  indent: 0,
                  endIndent: 25,
                  color: Colors.black,
                ))
                ])),

        ]
    )

         , Expanded(
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
                                builder: (context) => Gender(),
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

        // ,  Positioned(
        //     left: 28,
        //     bottom:  MediaQuery.of(context).size.height*0.04,
        //     child:
        //     Container(
        //         width:  MediaQuery.of(context).size.width*0.85,
        //         height: 56,
        //
        //         decoration: BoxDecoration(
        //           color:Color(0xFF869578) ,
        //           border:  Border.all(color: Colors.grey),
        //           borderRadius: BorderRadius.circular(12),
        //           //color:Colors.red,
        //           shape: BoxShape.rectangle,
        //         ),
        //         child:
        //         InkWell(
        //         onTap: () {
        //             Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //             builder: (context) => Gender(),
        //             ),
        //             );},child:
        //         Row(
        //             mainAxisAlignment:
        //             MainAxisAlignment.center,
        //             crossAxisAlignment: CrossAxisAlignment.center,
        //             children: [
        //               Center(child:
        //
        //               Text(
        //                 "Next",
        //                 textAlign: TextAlign.center,
        //                 style: const TextStyle(
        //                     fontFamily: 'DM Sans',
        //                     fontWeight: FontWeight.w500,
        //                     fontSize: 16 ,
        //                     color:Color(0xFFFFFFFF)//Colors.red  ,#30322F
        //                   //  fontWeight: FontWeight.bold,
        //                 ),
        //               ),
        //               ),
        //               SizedBox(width: 12,),
        //               Image.asset(
        //                 Assets.arrow3,
        //                 height: 14,
        //                 width: 20,
        //               )
        //
        //             ])
        //         )
        //     ),)
        ]));
  }
















}
