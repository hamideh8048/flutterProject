import 'package:RoboDrop/widgets/profile.dart';
import 'package:RoboDrop/widgets/stylist.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';
import 'dressRoom.dart';
import 'homeRobo.dart';


class MatchFinder extends   StatefulWidget {

  @override
  State<MatchFinder> createState() => _MatchFinderState();
}
class _MatchFinderState extends State<MatchFinder> {
int currentIndex=0;
int selectedIndex=0;
bool showMatch=false;
bool isSelected=false;
Image? img;
@override
void initState() {
  super.initState();
  //img = imgUp;
}
  @override
  Widget build(BuildContext context) {
Image.asset( Assets.plus);
    Image imgtik =  Image.asset(
      Assets.tikcircle,
      height: 24,
      width: 24,

    );
    final List<String> urls = <String>[Assets.smalltshirt, Assets.smallpant, ];
    final List<String> names = <String>["Outfit", "Shoes", "Scarf","Pants","Sweater","T-S"];
    final List<String> secondUrls = <String>[Assets.pant1, Assets.pant4, ];
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),//0xFFE5E5E5),//  Colors.white,
        appBar: AppBar(
            leading: BackButton(
                color: Colors.black
            ),
          elevation: 0,
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
            actions: [ //add

                IconButton(
                    tooltip: "Filter",
                    icon:  new Image.asset(Assets.filter,width: 24,height: 24,),//const Icon(Icons.filter_list_alt,color:Colors.black),
                    onPressed: () async {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(builder: (context) => Filter()));

                    }
                ),
                IconButton(
                    padding: const EdgeInsets.only(right: 20),
                    icon: Icon(Icons.search,color:Colors.black ,),
                    onPressed: () {}
                )

            ]
        ),
      body:

    Stack(
        children: [
         Padding(
              padding:
              const EdgeInsets.fromLTRB(20,70,15, 0),
              child:
              Container(
                  height:190,
                  child:
                  ListView.builder(
                      scrollDirection: Axis.horizontal,

                      itemCount: urls.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child:
                               Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 5),child:
                                Stack(
                                    children: [
                                      Container(
                                          child:
                                          GestureDetector(
                                              onTap: ()
                                              {
                                                selectedIndex=index;
                                              setState(() {
                                              isSelected=!isSelected;});
                                                // Navigator.push(
                                                //     context,
                                                //     MaterialPageRoute(builder: (context) =>  Outfit(id: secondUrls[index])));
                                              },child:
                                          Image.asset(
                                            urls[index],
                                            height: 72,
                                            width: 72,
                                          ))
                                      ),

                                    ]
                                )
                                )
                              ,
                        );
                      }
                  ))

          ),
         Padding(
              padding:
              const EdgeInsets.fromLTRB(0,180,15, 0),
              child:
              Container(

                  height:42,
                  child:
                  ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: names.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                           color:Color(0xFFE5E7E4)  ,
                          child:
                                Padding(
                                    padding:
                                    const EdgeInsets.only(left: 8),
                                    child:
                                    GestureDetector(
                                        onTap: () {
                                          currentIndex=index;
                                        },child:
                                    Container(
                                      width: 58,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          color:currentIndex==index?Color(0xFF869578):Color(0xFFFFFFFF),//Color(0xFFD4583D):Color(0xFFE5E7E4) ,//currentIndex == 2 ? Colors.orange : Colors.transparent,
                                        //  border: (selectedIndex==index &&isSelected)?Border.all(color: Colors.red,  width:2,): null,//Border.all(color: Color(0xFF818181),  width:0,),
                                          borderRadius: BorderRadius.circular(22),
                                          shape: BoxShape.rectangle),
                                      child: Center(
                                          child:
                                          Text(
                                            names[index],
                                            textAlign: TextAlign.center,
                                            style:  TextStyle(
                                              fontFamily: 'DM Sans',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12 ,
                                              color:currentIndex==index?Color(0xFFFFFFFF):Color(0xFF30322F),//Colors.red  ,##4B4D49
                                              //  fontWeight: FontWeight.bold,
                                            ),
                                          )
                                      ),
                                    ))
                                )

                        );
                      }
                  ))

          ),

          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child:
                  Padding(
                      padding:
                      EdgeInsets.only(
                          bottom:MediaQuery.of(context).size.height*0.1
                        // 20
                      ),child:

                      Container(
                        width: MediaQuery.of(context).size.width*0.85,// 320,
                        height: MediaQuery.of(context).size.height*0.46,//380,
                        decoration: BoxDecoration(
                            border:  Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(0.0, 0.0),
                                blurRadius: 0.0,
                                spreadRadius: 0.0,
                              ), //BoxShadow
                            ],
                            shape: BoxShape.rectangle),
                        child:
                        Center(child:
                        Image.asset(
                          Assets.shoe2,
                          height: 300,
                          width: 300,
                        )

                        ),)

              ),
            ),
          ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: MaterialButton(
                onPressed: () => {},
                child:

                Padding(
                    padding:
                    EdgeInsets.only(
                        bottom:MediaQuery.of(context).size.height*0.12// 20
                    ),child:
    Row(
    mainAxisAlignment:
    MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: const Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: const Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
            shape: BoxShape.circle),
        width:  64,
        height:64 ,
        child:
        Center(child:
        Image.asset(
          Assets.cross,
          height: 20,
          width: 22,
        )

        ),),
      SizedBox(
        width: 20,
      ),
      Container(
        decoration: BoxDecoration(

            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: const Offset(
                  5.0,
                  5.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: const Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
            shape: BoxShape.circle),
        width:  64,
        height:64 ,
        child:
        Center(child:
        Image.asset(
          Assets.favorite2,
          height: 20,
          width: 22,
        )

        ),),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ), //BoxShadow
                        BoxShadow(
                          color: Colors.white,
                          offset: const Offset(0.0, 0.0),
                          blurRadius: 0.0,
                          spreadRadius: 0.0,
                        ), //BoxShadow
                      ],
                      shape: BoxShape.circle),
                  width:  64,
                  height:64 ,
                  child:
                  Center(child:
                  Image.asset(
                    Assets.plus,
                    height: 25,
                    width: 25,
                  )

                  ),),

    ])
                )
            ),
          ),
          Align(
            alignment: FractionalOffset.centerRight,
           child:
                Padding(
                    padding:
                    EdgeInsets.only(
                        top:MediaQuery.of(context).size.width*0.8// 20
                      ,right:60
                    ),child:

                Column(

                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Container(
                        decoration: BoxDecoration(
                          color:Color(0xFF869578) ,
                            shape: BoxShape.circle),
                        width:  17,
                        height:17 ,
                        child:Container()
                     ),
              SizedBox(
                height: 11,
              )
              ,Container(
                  decoration: BoxDecoration(
                      color:Color(0xFFE5E7E4) ,
                      shape: BoxShape.circle),
                  width:  17,
                  height:17 ,
                  child:null
              ),
                      SizedBox(
                        height: 11,
                      )
                      ,Container(
                          decoration: BoxDecoration(
                              color:Color(0xFFE5E7E4) ,
                              shape: BoxShape.circle),
                          width:  17,
                          height:17 ,
                          child:null
                      )



                    ])
                )
            ),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: MaterialButton(
                onPressed: () => {},
                child:

                Padding(
                    padding:
                    EdgeInsets.only(
                        bottom:MediaQuery.of(context).size.height*0.02// 20
                    ),child:
                Container(
                    width:  MediaQuery.of(context).size.width*0.85,
                    height: 56,
                    decoration: BoxDecoration(
                      color: Color(0xFF869578) ,
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
                          builder: (context) => DressRoom(),
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
                            "2 Items I go to dress room",
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
        ]
    ),

    );
  }

void onTabTapped(int value) {
  currentIndex=value;
  switch(value)
  {
    case 0:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomeRobo(),
        ),
      );
      break;
    case 1:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Styist(),
        ),
      );
      break;
    case 4:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Profile(),
        ),
      );
      break;
  }
}



}
