import 'package:RoboDrop/widgets/bodyShape.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';
import 'basicInfo.dart';


class SkinColor extends StatefulWidget {
  @override
  State<SkinColor> createState() => _SkinColorState();
}
class _SkinColorState extends State<SkinColor> {
int currentIndex=0;
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
                Text("What is your skin color? "
                    ,style: const TextStyle(fontSize:22,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),

              Padding(
                padding:
                const EdgeInsets.fromLTRB(24,0,24, 0),
                child:
                Text("Select color most like your skin color.."
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
                          const EdgeInsets.only(left: 0,right: 10,top:0,bottom: 0),
                          child:
                          Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 0,top:5,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                            GestureDetector(
                                            onTap: ()
                                            {
                                              _visible=true;
                                            setState(() {
                                            currentIndex=1;
                                            }
                                            );
                                            },child:
                                          Container(
                                              width: 75,
                                              height: 40,
                                              decoration: BoxDecoration(
                                              border:currentIndex==1?  Border.all(
                                              width:2,
                                              color: Color(0xFF333333),
                                              style: BorderStyle.solid,
                                              ):null,
                                          borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFFEE3C6),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              Visibility(
                                              visible:  currentIndex==1??true,child:
                                                Center(
                                                  child:
                                                  Image.asset(
                                                    Assets.check,
                                                    height: 16,
                                                    width: 16,
                                                  )
                                                ))

                                              ))

                                          ,Padding(
                                              padding:
                                              const EdgeInsets.only(left: 8,right: 8),
                                              child:
                                                GestureDetector(
                                                onTap: ()
                                                {_visible=true;
                                                setState(() {
                                                currentIndex=2;
                                                }
                                                );},child:
                                              Container(
                                                  width: 75,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    border:currentIndex==2?  Border.all(
                                                      width:2,
                                                      color: Color(0xFF333333),
                                                      style: BorderStyle.solid,
                                                    ):null,

                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFFDE7AD),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  Visibility(
                                                      visible: currentIndex==2?true:false,child:
                                                  Center(
                                                      child:
                                                      Image.asset(
                                                        Assets.check,
                                                        height: 16,
                                                        width: 16,
                                                      )
                                                  ))
                                              ))
                                          )
                                    ,Padding(
                                    padding:
                                    const EdgeInsets.only(right: 8),

                                           child:   GestureDetector(
                                                  onTap: ()
                                                  {_visible=true;
                                                  setState(() {
                                                    currentIndex=3;
                                                  }
                                                  );},child:
                                           Container(
                                              width: 75,
                                              height: 40,
                                              decoration: BoxDecoration(
                                                border:currentIndex==3?  Border.all(
                                                  width:2,
                                                  color: Color(0xFF333333),
                                                  style: BorderStyle.solid,
                                                ):null,
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFF8D998),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              Visibility(
                                                  visible:  currentIndex==3??true,child:
                                              Center(
                                                  child:
                                                  Image.asset(
                                                    Assets.check,
                                                    height: 16,
                                                    width: 16,
                                                  )
                                              ))
                                           ))),
                                            GestureDetector(
                                            onTap: ()
                                            {_visible=true;
                                            setState(() {
                                            currentIndex=4;
                                            }
                                            );},child:
                                              Container(
                                                  width: 75,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    border:currentIndex==4?  Border.all(
                                                      width:2,
                                                      color: Color(0xFF333333),
                                                      style: BorderStyle.solid,
                                                    ):null,
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFF8D998),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  Visibility(
                                                      visible: currentIndex==4??true,child:
                                                  Center(
                                                      child:
                                                      Image.asset(
                                                        Assets.check,
                                                        height: 16,
                                                        width: 16,
                                                      )
                                                  ))
                                              ))
                                         ] )

                                )

                              ] ),

                      )

                          ])
                  ),

                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 0,right: 0,top:0,bottom: 0),
                              child:
                              Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding:
                                        const EdgeInsets.only(left: 0,right: 8,top:5,bottom: 10),
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
                                                currentIndex=5;
                                                }
                                                );},child:
                                              Container(
                                                  width: 75,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    border:currentIndex==5?  Border.all(
                                                      width:2,
                                                      color: Color(0xFF333333),
                                                      style: BorderStyle.solid,
                                                    ):null,
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFECC091),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  Visibility(
                                                      visible:  currentIndex==5??true,child:
                                                  Center(
                                                      child:
                                                      Image.asset(
                                                        Assets.check,
                                                        height: 16,
                                                        width: 16,
                                                      )
                                                  ))
                                              ))

                                              ,Padding(
                                                  padding:
                                                  const EdgeInsets.only(left: 8,right: 8),
                                                  child:
                                                    GestureDetector(
                                                    onTap: ()
                                                    {_visible=true;
                                                    setState(() {
                                                    currentIndex=6;
                                                    }
                                                    );},child:
                                                  Container(
                                                      width: 75,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        border:currentIndex==6?  Border.all(
                                                          width:2,
                                                          color: Color(0xFF333333),
                                                          style: BorderStyle.solid,
                                                        ):null,
                                                        borderRadius: BorderRadius.circular(12),
                                                        color:Color(0xFFF2C280),
                                                        shape: BoxShape.rectangle,
                                                      ),
                                                      child:
                                                      Visibility(
                                                          visible:  currentIndex==6??true,child:
                                                      Center(
                                                          child:
                                                          Image.asset(
                                                            Assets.check,
                                                            height: 16,
                                                            width: 16,
                                                          )
                                                      ))
                                                  ))
                                              )
                                              ,Padding(
                                                  padding:
                                                  const EdgeInsets.only(right: 8), child:
                                                  GestureDetector(
                                                      onTap: ()
                                                      {_visible=true;
                                                      setState(() {
                                                        currentIndex=7;
                                                      }
                                                      );},child:
                                                  Container(
                                                      width: 75,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        border:currentIndex==7?  Border.all(
                                                          width:2,
                                                          color: Color(0xFF333333),
                                                          style: BorderStyle.solid,
                                                        ):null,
                                                        borderRadius: BorderRadius.circular(12),
                                                        color:Color(0xFFD49E7A),
                                                        shape: BoxShape.rectangle,
                                                      ),
                                                      child:
                                                      Visibility(
                                                          visible:  currentIndex==7??true,child:
                                                      Center(
                                                          child:
                                                          Image.asset(
                                                            Assets.check,
                                                            height: 16,
                                                            width: 16,
                                                          )
                                                      ))
                                                  ))),
                                                  GestureDetector(
                                                  onTap: ()
                                                  {_visible=true;
                                                  setState(() {
                                                  currentIndex=8;
                                                  }
                                                  );},child:
                                              Container(
                                                  width: 75,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    border:currentIndex==8?  Border.all(
                                                      width:2,
                                                      color: Color(0xFF333333),
                                                      style: BorderStyle.solid,
                                                    ):null,
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFBB6536),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  Visibility(
                                                      visible:  currentIndex==8??true,child:
                                                  Center(
                                                      child:
                                                      Image.asset(
                                                        Assets.check,
                                                        height: 16,
                                                        width: 16,
                                                      )
                                                  ))
                                              ))
                                            ] )
                                    )

                                  ] ),

                            )

                          ]),

                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                              const EdgeInsets.only(left: 0,right: 0,top:0,bottom: 0),
                              child:
                              Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding:
                                        const EdgeInsets.only(left: 0,right: 8,top:5,bottom: 10),
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
                                                currentIndex=9;
                                                }
                                                );},child:
                                              Container(
                                                  width: 75,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    border:currentIndex==9?  Border.all(
                                                      width:2,
                                                      color: Color(0xFF333333),
                                                      style: BorderStyle.solid,
                                                    ):null,
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFCF965F),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  Visibility(
                                                      visible:  currentIndex==9??true,child:
                                                  Center(
                                                      child:
                                                      Image.asset(
                                                        Assets.check,
                                                        height: 16,
                                                        width: 16,
                                                      )
                                                  ))
                                              ))

                                              ,Padding(
                                                  padding:
                                                  const EdgeInsets.only(left: 8,right: 8),
                                                  child:
                                                  GestureDetector(
                                                  onTap: ()
                                                  {_visible=true;
                                                  setState(() {
                                                  currentIndex=10;
                                                  }
                                                  );},child:
                                                  Container(
                                                      width: 75,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        border:currentIndex==10?  Border.all(
                                                        width:2,
                                                        color: Color(0xFF333333),
                                                        style: BorderStyle.solid,
                                                        ):null,
                                                         borderRadius: BorderRadius.circular(12),
                                                        color:Color(0xFFAD8A60),
                                                        shape: BoxShape.rectangle,
                                                      ),
                                                      child:
                                                      Visibility(
                                                          visible:  currentIndex==10??true,child:
                                                      Center(
                                                          child:
                                                          Image.asset(
                                                            Assets.check,
                                                            height: 16,
                                                            width: 16,
                                                          )
                                                      ))
                                                  )
                                              ))
                                              ,Padding(
                                                  padding:
                                                  const EdgeInsets.only(right: 8),
                                                  child:
                                                      GestureDetector(
                                                      onTap: ()
                                                      {_visible=true;
                                                      setState(() {
                                                      currentIndex=11;
                                                      }
                                                      );},child:
                                                      Container(
                                                      width: 75,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        border:currentIndex==11?  Border.all(
                                                          width:2,
                                                          color: Color(0xFF333333),
                                                          style: BorderStyle.solid,
                                                        ):null,
                                                        borderRadius: BorderRadius.circular(12),
                                                        color:Color(0xFF935F37),
                                                        shape: BoxShape.rectangle,
                                                      ),
                                                      child:
                                                      Visibility(
                                                          visible:  currentIndex==11??true,child:
                                                      Center(
                                                          child:
                                                          Image.asset(
                                                            Assets.check,
                                                            height: 16,
                                                            width: 16,
                                                          )
                                                      ))
                                                      ))),
                                                          GestureDetector(
                                                          onTap: ()
                                                          {_visible=true;
                                                          setState(() {
                                                          currentIndex=12;
                                                          }
                                                          );},child:
                                              Container(
                                                  width: 75,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    border:currentIndex==12?  Border.all(
                                                      width:2,
                                                      color: Color(0xFF333333),
                                                      style: BorderStyle.solid,
                                                    ):null,
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFF733F17),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  Visibility(
                                                      visible:  currentIndex==12??true,child:
                                                  Center(
                                                      child:
                                                      Image.asset(
                                                        Assets.check,
                                                        height: 16,
                                                        width: 16,
                                                      )
                                                  ))
                                              ))
                                            ] )


                                    )

                                  ] ),

                            )

                          ]),

                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                              Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding:
                                        const EdgeInsets.only(left: 0,right:0,top:5,bottom: 10),
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
                                              currentIndex=13;
                                              }
                                              );},child:
                                              Container(
                                                  width: 75,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFB26644),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  Visibility(
                                                      visible:  currentIndex==13??true,child:
                                                  Center(
                                                      child:
                                                      Image.asset(
                                                        Assets.check,
                                                        height: 16,
                                                        width: 16,
                                                      )
                                                  ))
                                              ))

                                              ,Padding(
                                                  padding:
                                                  const EdgeInsets.only(left: 8,right: 8),
                                                  child:
                                                        GestureDetector(
                                                        onTap: ()
                                                        {_visible=true;
                                                        setState(() {
                                                        currentIndex=14;
                                                        }
                                                        );},child:
                                                  Container(
                                                      width: 75,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        //  border: Border.all(color: Colors.black87, width: 4),
                                                        // border:  Border.all(color: Colors.grey),
                                                        borderRadius: BorderRadius.circular(12),
                                                        color:Color(0xFF7F4422),
                                                        shape: BoxShape.rectangle,
                                                      ),
                                                      child:
                                                      Visibility(
                                                          visible:  currentIndex==14??true,child:
                                                      Center(
                                                          child:
                                                          Image.asset(
                                                            Assets.check,
                                                            height: 16,
                                                            width: 16,
                                                          )
                                                      ))
                                                  ))
                                              )
                                              ,Padding(
                                                  padding:
                                                  const EdgeInsets.only(right: 8),child:
                                                  GestureDetector(
                                                      onTap: ()
                                                      {_visible=true;
                                                      setState(() {
                                                        currentIndex=15;
                                                      }
                                                      );},child:
                                                  Container(
                                                      width: 75,
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(12),
                                                        color:Color(0xFF935F37),
                                                        shape: BoxShape.rectangle,
                                                      ),
                                                      child:
                                                      Visibility(
                                                          visible:  currentIndex==15??true,child:
                                                      Center(
                                                          child:
                                                          Image.asset(
                                                            Assets.check,
                                                            height: 16,
                                                            width: 16,
                                                          )
                                                      ))
                                                  ))),
                                                  GestureDetector(
                                                  onTap: ()
                                                  {_visible=true;
                                                  setState(() {
                                                  currentIndex=16;
                                                  }
                                                  );},child:
                                              Container(
                                                  width: 75,
                                                  height: 40,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFF291709),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  Visibility(
                                                      visible:  currentIndex==16??true,child:
                                                  Center(
                                                      child:
                                                      Image.asset(
                                                        Assets.check,
                                                        height: 16,
                                                        width: 16,
                                                      )
                                                  ))
                                              ))
                                            ] )


                                    )

                                  ] ),

                          ])


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
                                builder: (context) => BodyShape(),
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
        //             builder: (context) => BodyShape(),
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
