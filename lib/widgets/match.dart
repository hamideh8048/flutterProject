import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';


class Match extends StatelessWidget {
int currentIndex=0;
String id=Assets.dress3;

Match({required this.id,});
  @override
  Widget build(BuildContext context) {

    final List<String> urls = <String>[Assets.tshirt, Assets.jeen, Assets.shoe];
    final List<String> list = <String>['A','B', ];
    final List<String> secondUrls = <String>[Assets.dress3, Assets.dress4,Assets.dress5, Assets.dress6,Assets.dress7, Assets.dress8 ];
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),//0xFFE5E5E5),//  Colors.white,
        appBar: AppBar(
          elevation: 0,
            leading: BackButton(
                color: Colors.black
            ),
          backgroundColor: Color(0xFFFFFFFF),
          title:
          Text('Match',
            style: const TextStyle(
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
                fontSize: 18 ,
                color:Color(0xFF30322F)//Colors.red  ,#30322F
              //  fontWeight: FontWeight.bold,
            ),
          ),
            actions: [ //add
              IconButton(
                padding: const EdgeInsets.only(right: 20),
                  icon: Icon(Icons.search,color:Color(0xFF30322F) ,),
                  onPressed: () {}
              )
            ]
        ),
      body:

    Stack(
        children: [

          Padding(
              padding:
              const EdgeInsets.fromLTRB(60,10,60, 0),
              child:
              Container(
                height: 450,//MediaQuery.of(context).size.height*.8,
                  child:
            Center(
              child:
              Image.asset(
                id,
                height: 400,
                width: 266,

              ),
            )

              )

          ),

          Padding(
              padding:
              const EdgeInsets.fromLTRB(42,455,10, 20),
              child:
              Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width:  120,
                        height: 30,
                        child:
                        Center(child:
                        Text(
                          "BRAND NAME",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              fontSize: 14 ,
                              color:Color(0xFF30322F)//Colors.red  ,#30322F
                            //  fontWeight: FontWeight.bold,
                          ),
                        ))),
                    Container(
                        width:  100,
                        height: 30,

                        child:
                        Padding(
                            padding:
                            const EdgeInsets.only(right: 40),child:
                        Text(
                          "Zara",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                              fontFamily: 'DM Sans',
                              fontWeight: FontWeight.w500,
                              fontSize: 14 ,
                              color:Color(0xFF30322F)//Colors.red  ,#30322F
                            //  fontWeight: FontWeight.bold,
                          ),
                        ))
                    )
                  ]),

          ),
          Padding(
            padding:
            const EdgeInsets.fromLTRB(10,485,40, 20),
            child:
            Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width:  120,
                      height: 30,
                      child:
                      Center(child:
                      Text(
                        "Size",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 14 ,
                            color:Color(0xFF30322F)//Colors.red  ,#30322F
                          //  fontWeight: FontWeight.bold,
                        ),
                      ))),
                  Container(
                      width:  100,
                      height: 30,

                      child:
                      // Padding(
                      //     padding:
                      //     const EdgeInsets.only(right: 70),child:
                      Text(
                        "XL[europe]",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 14 ,
                            color:Color(0xFF30322F)//Colors.red  ,#30322F
                          //  fontWeight: FontWeight.bold,
                        ),
                      ))
                 // )
                ]),

          ),
          Padding(
            padding:
            const EdgeInsets.fromLTRB(12,515,60, 20),
            child:
            Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width:  120,
                      height: 30,
                      child:
                      Center(child:
                      Text(
                        "Color",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 14 ,
                            color:Color(0xFF30322F)//Colors.red  ,#30322F
                          //  fontWeight: FontWeight.bold,
                        ),
                      ))),
                  Container(
                      width:  23,
                      height: 23,

                      child:
                      // Padding(
                      //     padding:
                      //     const EdgeInsets.only(right: 70),child:

                      Container(
                      width: 23,
                      height: 23,
                      decoration: BoxDecoration(

                      color:Color(0xFFC4C4C4) ,//currentIndex == 2 ? Colors.orange : Colors.transparent,
                      shape: BoxShape.circle),
                      child: Center(

                      child:
                      Container()

                  )))
                  // )
                ]),

          ),
          Padding(
            padding:
            const EdgeInsets.fromLTRB(12,545,20, 20),
            child:
            Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width:  120,
                      height: 30,
                      child:
                      Center(child:
                      Text(
                        "Price",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 14 ,
                            color:Color(0xFF30322F)//Colors.red  ,#30322F
                          //  fontWeight: FontWeight.bold,
                        ),
                      ))),
                  Container(
                      width:  100,
                      height: 30,

                      child:
                      // Padding(
                      //     padding:
                      //     const EdgeInsets.only(right: 70),child:
                      Text(
                        "450",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 14 ,
                            color:Color(0xFF30322F)//Colors.red  ,#30322F
                          //  fontWeight: FontWeight.bold,
                        ),
                      ))
                  // )
                ]),

          )
        ]
    ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        //  selectedItemColor: Colors.red,
        backgroundColor:  Colors.black,//Color(0xFFFFFFFF),

        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon:   Image.asset(Assets.home,width: 20,height: 20, color: Colors.black,),//Icon(Icons.person),
            label: 'h',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Assets.book,width: 20,height: 20, color: Colors.black,),
            label: 'h',
          ),


          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFFF8D64) ,//currentIndex == 2 ? Colors.orange : Colors.transparent,
                  shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child:Image.asset(Assets.camera,width: 20,height: 20, color: Colors.white,),
              ),
            ),
            label:'',
          ),

          BottomNavigationBarItem(
            icon: Image.asset(Assets.rectangle,width: 20,height: 20, color: Colors.black,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(Assets.personr,width: 20,height: 20, color: Colors.black,),
            label: '',
          ),
        ],
      ),

    );
  }

void onTabTapped(int value) {
  currentIndex=value;
}



}
