import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';
import 'basicInfo.dart';
import 'measurement.dart';


class Sizes extends StatefulWidget {
  @override
  State<Sizes> createState() => _SizesState();
}
class _SizesState extends State<Sizes> {
int currentIndex=9;
int currentIndexSecond=9;
bool _visible = false;
bool _visibleSecond = false;
void _toggle() {
  setState(() {
    _visible = true;//!_visible;
  });}
void _toggleSecond() {
  setState(() {
    _visibleSecond = true;//!_visible;
  });}
@override
void initState() {
  super.initState();
}
  @override
  Widget build(BuildContext context) {

    final List<String> names = <String>["2XS", "XS", "S","M","L","XL","2XL"];
    final List<String> secondSize = <String>["2XS", "XS", "S","M","L","XL","2XL"];
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
                Text("What sizes do you typically wear?"
                    ,style: const TextStyle(fontSize:22,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),

              Padding(
                padding:
                const EdgeInsets.fromLTRB(24,0,24, 0),
                child:
                Text("Check out posts from users of similar sizes."
                 , maxLines: 2
                    ,style: const TextStyle(fontSize: 14,fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,color: Colors.grey,fontWeight: FontWeight.w400,)),),

              Padding(
                padding:
                const EdgeInsets.fromLTRB(26,31,15, 20),
                child:
                Text("Tops"
                    ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),

              Padding(
                  padding:
                  const EdgeInsets.fromLTRB(18,0,15, 0),
                  child:
                  Container(

                      height:60,
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
                                        GestureDetector(
                                            onTap: () {
                                              currentIndex=index;
                                              _toggle() ;
                                              },child:
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color:currentIndex==index?Color(0xFFD4583D):Color(0xFFE5E7E4) ,//currentIndex == 2 ? Colors.orange : Colors.transparent,
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
                                                  color:currentIndex==index?Color(0xFFE5E7E4):Color(0xFF4B4D49),//Colors.red  ,##4B4D49
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                          ),
                                        ))
                                    )
                                  ]),
                            );
                          }
                      ))

              ),


              Visibility(
                  visible: _visible,
                  child:
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
              )
              ))

             , Padding(
                padding:
                const EdgeInsets.fromLTRB(26,31,15, 20),
                child:
                Text("Bottoms"
                    ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),

              Padding(
                  padding:
                  const EdgeInsets.fromLTRB(18,0,15,10),
                  child:
                  Container(

                      height:70,
                      child:
                      ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: secondSize.length,
                          itemBuilder: (BuildContext context, int index2) {
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
                                        GestureDetector(
                                          onTap: () {
                                      setState(() {
                                        _toggleSecond();
                                        currentIndexSecond = index2;
                                      });},child:
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                              color:currentIndexSecond==index2?Color(0xFFD4583D):Color(0xFFE5E7E4),
                                              shape: BoxShape.circle),
                                          child: Center(
                                              child:
                                              Text(
                                                secondSize[index2],
                                                textAlign: TextAlign.center,
                                                style:  TextStyle(
                                                  fontFamily: 'DM Sans',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12 ,
                                                  color: currentIndexSecond==index2?Color(0xFFE5E7E4):Color(0xFF4B4D49),//Colors.red  ,##4B4D49
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                          ),
                                        ))
                                    )
                                  ]),
                            );
                          }
                      ))

              ),

              Visibility(
                  visible: _visibleSecond,
                  child:
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
                  )
                  ))
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
                                builder: (context) => Measurement(),
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
        //     bottom: 40,
        //     child:
        //     InkWell(
        //       onTap: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => Measurement(),
        //           ),
        //         );},child:
        //     Container(
        //         width: MediaQuery.of(context).size.width*0.85,
        //         height: 56,
        //
        //         decoration: BoxDecoration(
        //           color:Color(0xFF869578) ,
        //           border:  Border.all(color: Colors.grey),
        //           borderRadius: BorderRadius.circular(13),
        //           //color:Colors.red,
        //           shape: BoxShape.rectangle,
        //         ),
        //         child:
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
        //
        //     ),))
        ]));
  }
















}
