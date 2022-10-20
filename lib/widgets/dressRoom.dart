import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';
import 'outfit.dart';


class DressRoom extends StatefulWidget {

  @override
  State<DressRoom> createState() => _DressRoomState();
}


class _DressRoomState extends State<DressRoom> {
  final List<String> urls = <String>[Assets.custom, Assets.dress3];
  final List<String> dress = <String>[Assets.male7, Assets.hat,Assets.tshirt4,Assets.coa2];
  final List<String> secondurls = <String>[Assets.custom2, Assets.custom3];



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: BackButton(
              color: Colors.black
          ),
          backgroundColor: Color(0xFFFFFFFF),
          title: Text('Dress Room',
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

       //   Column(
       //    mainAxisAlignment: MainAxisAlignment.start,
       //    crossAxisAlignment:CrossAxisAlignment.start,
       //    children: [
            // construct the profile details widget here


            //''''''''''''''''''
        Padding(
        padding:
        EdgeInsets.only(left: 170,top:50),
        child:
        Container(
          width: 167,
          height: 300,
                child:
                Image.asset(
                  Assets.male,
                  height: 300,
                  width: 167,
                ),
        ),),
//'''''''''''''''''''


            Padding(
              padding:
              EdgeInsets.fromLTRB(20, 40, 0, 0),
       child:
            Container(
            height: 350,
                width: 100,
                child:
                ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: dress.length,
                    itemBuilder: (BuildContext context, int index) {

                      return Container(
                        child:
                          Padding(
                          padding:
                          EdgeInsets.only( top:10,bottom: 10),
                      child:
                          Container(
                              width: 58,
                              height: 60,
                              decoration: BoxDecoration(
                              ),
                              child:
                              Image.asset(
                                dress[index],
                                fit:BoxFit.fitHeight ,
                                height: 50,
                                width: 58,
                              )
                          ,
                        ),)


                      );
                    }
                )),),


        //.................
            Padding(
              padding:
               EdgeInsets.fromLTRB(0,  400, 0, 0),
              child:    Container(
                  width:  MediaQuery.of(context).size.width*.98 ,
                  height: 50,
                  decoration: BoxDecoration(
                    border:  Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),

                    color:Color(0xFFFFFFFF),
                    shape: BoxShape.rectangle,
                  ),
                  child:
                  TabBar(
                    tabs: [
                      Tab(
                      //  text: 'Outfit(2)',
                        child:
                        Container(
                            width:  78,
                            height: 22,
                            decoration: BoxDecoration(
                              //  border: Border.all(color: Colors.black87, width: 4),
                              borderRadius: BorderRadius.circular(10),
                              color:Color(0xFFD4583D),
                              shape: BoxShape.rectangle,
                            ),
                            child:

                            Text(
                              "Outfit(2)",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16 ,
                                  color:Colors.white//Colors.red  ,#30322F
                                //  fontWeight: FontWeight.bold,
                              ),
                            )
                        ),

                        // icon: Icon(Icons.directions_bike),
                      ),
                      Tab(
                      //  text: 'Bottom(1)',
                        child:
                        Text(
                          "Bottom(1)",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              fontSize: 16 ,
                              color:Colors.grey//Colors.red  ,#30322F
                            //  fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Tab(
                        child:
                        Text(
                          "Footwear(0)",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w700,
                              fontSize: 16 ,
                              color:Colors.grey//Colors.red  ,#30322F
                            //  fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
              ),),

            Expanded(
              child: TabBarView(
                children: [

              Padding(
              padding:
               EdgeInsets.only( left: 20,top:  480),
                child:

                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: [
                   Container(

                          height:90,
                          child:
                          ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: urls.length,
                              itemBuilder: (BuildContext context, int index) {

                                return Container(
                                  child:
                                        Padding(
                                            padding:
                                            const EdgeInsets.only(left: 20),
                                           child:
                                            Container(
                                                width: 90,
                                                height: 90,
                                                decoration: BoxDecoration(
                                                ),
                                                child:
                                                Image.asset(
                                                  urls[index],
                                                  height: 85,
                                                  width: 85,
                                                )
                                            ),
                                        ),


                                );
                              }
                          )),
                  Padding(
                      padding:
                      EdgeInsets.only( left: 20,top: 20,bottom: 10),child:
                      Text(
                        "Outfits from closet",
                        style: const TextStyle(
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 12 ,
                            color:Color(0xFF4B4D49)//Colors.red  ,#30322F
                          //  fontWeight: FontWeight.bold,
                        ),
                      ))
                   ,Container(
                          height:70,
                          child:
                          ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: secondurls.length,
                              itemBuilder: (BuildContext context, int index) {

                                return Container(
                                  child:
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 20),
                                    child:
                                    Container(
                                        width: 90,
                                        height: 50,
                                        decoration: BoxDecoration(
                                        ),
                                        child:
                                        Image.asset(
                                          secondurls[index],
                                          height: 85,
                                          width: 50,
                                        )
                                    ),
                                  ),


                                );
                              }
                          ))
                  ])
              )


                  // second tab bar viiew widget
                 , Container(

                  ),
                  Container(

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



