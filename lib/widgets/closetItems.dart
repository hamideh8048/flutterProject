import 'package:RoboDrop/widgets/profile.dart';
import 'package:RoboDrop/widgets/stylist.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';
import 'closet.dart';
import 'homeRobo.dart';
import 'matchFinder.dart';


class ClosetItems extends   StatefulWidget {

  @override
  State<ClosetItems> createState() => _ClosetItemsState();
}
class _ClosetItemsState extends State<ClosetItems> {
int currentIndex=0;
int selectedIndex=0;
int currentIndexSecond=0;
int selectedIndexSecond=0;
bool showMatch=false;
bool isSelected=false;
bool isSelectedSecond=false;
Image? img;
Image imgUp =   Image.asset(
  Assets.plus,
  height: 30,
  width: 30,

);//Image.asset( Assets.plus);
Image imgDown =  Image.asset(
  Assets.tik,
  height: 30,
  width: 30,

);

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
    final List<String> urls = <String>[Assets.shirt7, Assets.shirt2, ];
    final List<String> secondUrls = <String>[Assets.pant1, Assets.pant4, ];
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),//0xFFE5E5E5),//  Colors.white,
        appBar: AppBar(
            leading: BackButton(
                color: Colors.black
            ),
            centerTitle: false,
            titleSpacing: 0.0,
          elevation: 0,
          backgroundColor: Color(0xFFFFFFFF),
            title:  Transform(
              // you can forcefully translate values left side using Transform
              transform:  Matrix4.translationValues(-20.0, 0.0, 0.0),
              child:
              Padding(
                  padding:
                  const EdgeInsets.fromLTRB(20,0,0, 0),child:
              Text(
                "Closet",

                style: const TextStyle(
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.w700,
                    fontSize: 18 ,
                    color:Colors.black//Colors.red  ,#30322F
                  //  fontWeight: FontWeight.bold,
                )
                ,)
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
            const EdgeInsets.fromLTRB(30,20,0, 0),
            child:
            InkWell(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Closet(),
                  ),
                );

              },child:
            Container(
                width:  103,
                height: 30,
                decoration: BoxDecoration(
                  //  border: Border.all(color: Colors.black87, width: 4),
                  borderRadius: BorderRadius.circular(10),
                  color:Color(0xFFFFFFFF),
                  shape: BoxShape.rectangle,
                ),
                child:
                Center(child:
                Text(
                  "Saved Outfit",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 14 ,
                      color:Color(0xFF6F716E),//Colors.red  ,##6F716E
                    //  fontWeight: FontWeight.bold,
                  ),
                ),)
            ),)

          ),
          Padding(
              padding:
              const EdgeInsets.fromLTRB(140,20,0, 0),
              child:

              Container(
                  width:  103,
                  height: 30,
                  decoration: BoxDecoration(
                    //  border: Border.all(color: Colors.black87, width: 4),
                    borderRadius: BorderRadius.circular(10),
                    color:Color(0xFFD4583D),
                    shape: BoxShape.rectangle,
                  ),
                  child:
                  Center(child:
                  Text(
                    "120 Items",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontFamily: 'DM Sans',
                        fontWeight: FontWeight.w400,
                        fontSize: 14 ,
                        color:Color(0xFF4B4D49) //Colors.red  ,##4B4D49
                      //  fontWeight: FontWeight.bold,
                    ),
                  ),)
              ),

          ),
          Padding(
            padding:
            const EdgeInsets.fromLTRB(26,80,15, 20),
            child:
            Text("Shirt"
                ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),
          Padding(
              padding:
              const EdgeInsets.fromLTRB(20,120,15, 0),
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
                                          decoration: BoxDecoration(
                                           border: (selectedIndex==index &&isSelected)?Border.all(color: Colors.red,  width:2,): null,//Border.all(color: Color(0xFF818181),  width:0,),
                                            borderRadius: BorderRadius.circular(22),
                                            shape: BoxShape.rectangle,
                                          ),
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
                                            height: 182,
                                            width: 121,
                                          ))
                                      ),

                                    Visibility(
                                    visible:(index==selectedIndex&&isSelected==true)?true:false,child:
                                    Positioned(
                                          right: 7,
                                          top: 9,
                                          child:
                                          GestureDetector(
                                            //your image is here
                                            child:
                                            imgtik,
                                            onTap: () {
                                              setState(() {
                                                isSelected=!isSelected;
                                                selectedIndex=index;
                                                // when it is pressed
                                                 img=imgDown;
                                                // if(img==imgUp){
                                                //   img =  imgDown;
                                                //   showDressroom=true;}
                                                // else {
                                                //   showDressroom=false;
                                                //   img = imgUp;
                                                // }

                                              });
                                            },

                                          )
                                      )
                                      // Positioned(
                                      //     right: 5,
                                      //     bottom: 7,
                                      //     child:
                                      //     GestureDetector(
                                      //       //your image is here
                                      //       child:
                                      //       imgtik,
                                      //
                                      //       onTap: () {
                                      //         setState(() {
                                      //           selectedIndex=index;
                                      //           // when it is pressed
                                      //           // img=imgDown;
                                      //           if(img==imgUp) {
                                      //             img = imgDown;
                                      //             showDressroom=true;
                                      //           }
                                      //           else {
                                      //             img = imgUp;
                                      //             showDressroom=false;
                                      //           }
                                      //         });
                                      //       },
                                      //
                                      //
                                      //     )
                                      //
                                      // )
                        )
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
            const EdgeInsets.fromLTRB(26,310,15, 20),
            child:
            Text("Pants"
                ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),
          Padding(
              padding:
              const EdgeInsets.fromLTRB(18,340,15, 0),
              child:
              Container(

                  height:190,
                  child:
                  ListView.builder(
                      scrollDirection: Axis.horizontal,

                      itemCount: secondUrls.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child:
                          Padding(
                              padding:
                              const EdgeInsets.fromLTRB(10, 0, 10, 5),child:
                          Stack(
                              children: [
                                Container(
                                    decoration: BoxDecoration(
                                      border: (selectedIndexSecond==index &&isSelectedSecond)?Border.all(color: Colors.red,  width:2,): null,
                                      borderRadius: BorderRadius.circular(12),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child:
                                    GestureDetector(
                                        onTap: ()
                                        {
                                          selectedIndexSecond=index;
                                          setState(() {
                                            isSelectedSecond=!isSelectedSecond;});
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(builder: (context) =>  Outfit(id: secondUrls[index])));
                                        },child:
                                    Image.asset(
                                      secondUrls[index],
                                      height: 182,
                                      width: 121,
                                    ))
                                ),

                                Visibility(
                                    visible:(index==selectedIndexSecond&&isSelectedSecond)?true:false,child:
                                Positioned(
                                    right: 7,
                                    top: 9,
                                    child:
                                    GestureDetector(
                                      //your image is here
                                      child:
                                      imgtik,
                                      onTap: () {
                                        setState(() {
                                          selectedIndexSecond=index;
                                          isSelectedSecond=!isSelectedSecond;
                                          // when it is pressed
                                          img=imgDown;
                                          // if(img==imgUp){
                                          //   img =  imgDown;
                                          //   showDressroom=true;}
                                          // else {
                                          //   showDressroom=false;
                                          //   img = imgUp;
                                          // }

                                        });
                                      },

                                    )
                                )
                                  // Positioned(
                                  //     right: 5,
                                  //     bottom: 7,
                                  //     child:
                                  //     GestureDetector(
                                  //       //your image is here
                                  //       child:
                                  //       imgtik,
                                  //
                                  //       onTap: () {
                                  //         setState(() {
                                  //           selectedIndex=index;
                                  //           // when it is pressed
                                  //           // img=imgDown;
                                  //           if(img==imgUp) {
                                  //             img = imgDown;
                                  //             showDressroom=true;
                                  //           }
                                  //           else {
                                  //             img = imgUp;
                                  //             showDressroom=false;
                                  //           }
                                  //         });
                                  //       },
                                  //
                                  //
                                  //     )
                                  //
                                  // )
                                )
                              ]
                          )
                          )
                          ,
                        );
                      }
                  )

              )

          ),
                  Visibility(
                  visible:(isSelectedSecond==true||isSelected==true), child:  Expanded(
            child:
            Align(
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
                            builder: (context) => MatchFinder(),
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
                              "2 Items I go to match finder",
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
            ),)
          )
        ]
    ),
      bottomNavigationBar:(isSelected==true || isSelectedSecond==true)?null: BottomNavigationBar(
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
    case 3:
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>Closet(),
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
