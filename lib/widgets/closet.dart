import 'package:RoboDrop/widgets/closetItems.dart';
import 'package:RoboDrop/widgets/dressRoom.dart';
import 'package:RoboDrop/widgets/filter.dart';
import 'package:RoboDrop/widgets/homeRobo.dart';
import 'package:RoboDrop/widgets/profile.dart';
import 'package:RoboDrop/widgets/stylist.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';
import 'outfit.dart';


class Closet extends StatefulWidget {

  @override
  State<Closet> createState() => _ClosetState();
}

class _ClosetState extends State<Closet> {

  bool showDressroom=false;
  int selectedIndex=0;
    Image? img;
    Image imgUp =   Image.asset(
    Assets.plus,
    height: 30,
    width: 30,

  );//Image.asset( Assets.plus);

  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    img = imgUp;
  }
  @override
  Widget build(BuildContext context) {


    final List<String> secondUrls = <String>[Assets.closet1, Assets.closet2, ];
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),//0xFFE5E5E5),//  Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFFFFFFF),
          centerTitle: false,
            titleSpacing: 0.0,
            title:  Transform(
              // you can forcefully translate values left side using Transform
              transform:  Matrix4.translationValues(-20.0, 0.0, 0.0),
              child:
    Padding(
    padding:
    const EdgeInsets.fromLTRB(50,20,0, 0),child:
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
                  tooltip: "Filter",
                  icon:  new Image.asset(Assets.filter,width: 24,height: 24,),//const Icon(Icons.filter_list_alt,color:Colors.black),
                  onPressed: () async {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Filter()));

                    // query = '';
                    // _getLabelSearch(context);
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
            const EdgeInsets.fromLTRB(30,40,0, 0),
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
                  "Saved Outfit",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: 'DM Sans',
                      fontWeight: FontWeight.w400,
                      fontSize: 14 ,
                      color:Colors.white//Colors.red  ,#30322F
                    //  fontWeight: FontWeight.bold,
                  ),
                ),)
            ),

          ),
          Padding(
            padding:
            const EdgeInsets.fromLTRB(140,40,0, 0),
            child:
    InkWell(
    onTap: ()
    {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => ClosetItems(),
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
            ),)

          ),
          Padding(
              padding:
              const EdgeInsets.fromLTRB(18,110,15, 0),
              child:
              Container(

                height: MediaQuery.of(context).size.height*.7,
                  child:

              GridView.count(
              // Create a grid with 2 columns. If you change the scrollDirection to
              // horizontal, this produces 2 rows.
              crossAxisCount: 2,
              // Generate 100 widgets that display their index in the List.
              children: List.generate(secondUrls.length, (index) {

              return Center(
              child:
                  Padding(
                  padding:
                  const EdgeInsets.fromLTRB(10, 0, 0, 20),child:
                Stack(
                children: [
                  Container(

                  decoration: BoxDecoration(
                  border:  Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
                shape: BoxShape.rectangle,
                ),
                child:

                Image.asset(
                                  secondUrls[index],
                                  height: 191,
                                  width: 155,
                                )
              ),

                  ]
                )
                  )
              );
              })))),

      showDressroom==true?  Positioned(
            left: 28,
            bottom: 20,
            child:
            InkWell(
              onTap: ()
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  DressRoom()));

              },child:
            Container(
                width: MediaQuery.of(context).size.width*0.85,
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
                        "Outfit I go to dressroom",
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

            ),)):Container()

        ]
    ),
         bottomNavigationBar: showDressroom==false?   BottomNavigationBar(
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
      ):null,

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
