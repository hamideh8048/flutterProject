import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';


class ShareSize extends StatelessWidget {
int currentIndex=0;

  @override
  Widget build(BuildContext context) {

    final List<String> names = <String>["Share size for top", "Share size for bottom", "Share shoe size","Share whole body size"];
    final List<String> urls = <String>["/topSize", "/bottomSize", "/shoeSize","/bodySize"];
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),//  Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: BackButton(
              color: Colors.black
          ),
          backgroundColor: Color(0xFFE5E5E5),
          title: Text('Share My Sizes',
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
            children: [

                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(15,10,15, 0),
                      child:
                      Container(
                          constraints:
                          BoxConstraints(minWidth: MediaQuery.of(context).size.width),
                          height:400,
                          decoration: BoxDecoration(


                          ),child:
                      ListView.builder(
                          padding: const EdgeInsets.fromLTRB(8,0,8,8),
                          itemCount: names.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(

                              child:
                              Column(
                                mainAxisAlignment:MainAxisAlignment.start,//  MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  SizedBox(height: 20,),
                              InkWell(
                                  onTap: ()
                                  {
                                    Navigator.of(context).pushNamed(
                                     // "/profile",
                                        urls[index]
                                    );
                                  },child:

                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 10,
                                    child:   Text(names[index]
                                      ,style: const TextStyle(
                                          fontFamily: 'DM Sans',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16 ,
                                          color:Color(0xFF30322F)//Colors.red  ,#30322F
                                        //  fontWeight: FontWeight.bold,
                                      ),

                                    ),),

                                  Padding(
                                      padding:
                                      const EdgeInsets.only(right: 10),
                                      child:
                                      Image.asset(Assets.arrow,width: 10,height: 14,))

                                ]))
                                ]),
                            );
                          }
                      ))

                    )],

          )]
    ));
  }
















}
