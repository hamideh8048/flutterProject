import 'package:RoboDrop/widgets/outfit.dart';
import 'package:RoboDrop/widgets/profile.dart';
import 'package:RoboDrop/widgets/stylist.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';
import 'Match.dart';
import 'homeRobo.dart';

class Mannequin extends StatefulWidget {
  int currentIndex=0;

  @override
  State<Mannequin> createState() => _MannequinState();
  Mannequin(String dress3);
}


class _MannequinState extends State<Mannequin> {
  int currentIndex=0;
  String id=Assets.dress3;
  @override
  Widget build(BuildContext context) {
    final List<String> urls = <String>[Assets.tshirt, Assets.jeen, Assets.shoe];
    final List<String> list = <String>['A', 'B',];
    final List<String> secondUrls = <String>[
      Assets.tshirt2,
      Assets.jeen,
      Assets.shoe
    ];
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF), //0xFFE5E5E5),//  Colors.white,
      appBar: AppBar(
          elevation: 0,
          leading: BackButton(
              color: Colors.black
          ),
          backgroundColor: Color(0xFFFFFFFF),
          title:
          Text('Outfit',
            style: const TextStyle(
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Color(0xFF30322F) //Colors.red  ,#30322F
              //  fontWeight: FontWeight.bold,
            ),
          ),
          actions: [ //add
            IconButton(
                padding: const EdgeInsets.only(right: 20),
                icon: Icon(Icons.search, color: Color(0xFF30322F),),
                onPressed: () {}
            )
          ]
      ),
      body:

      Stack(
          children: [

            // Column(
            //
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            // children: [

            Padding(
                padding:
                const EdgeInsets.fromLTRB(18, 10, 15, 0),
                child:
                Container(
                    height: 450, //MediaQuery.of(context).size.height*.8,
                    child:
                    Center(
                      child:
                      Image.asset(
                        id,
                        height: 400,
                        width: 327,

                      ),
                    )

                )

            ),
            Padding(
                padding:
                const EdgeInsets.fromLTRB(100, 372, 0, 0),
                child:
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Outfit(id: Assets.dress5),
                      ),
                    );
                  }, child:

                Container(
                    width: 78,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFFFFFFFF),
                      shape: BoxShape.rectangle,
                    ),
                    child:
                    Center(child:
                    Text(
                      "Set View",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontFamily: 'DM Sans',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Color(0xFF4F4F4F)
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),)
                ),
                )
            ),

            Padding(
              padding:
              const EdgeInsets.fromLTRB(190, 372, 0, 0),
              child:
              Container(
                  width: 78,
                  height: 30,
                  decoration: BoxDecoration(

                    // border:  Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFD4583D),
                    //Colors.grey,//:Color(0xFFFFFFFF),
                    shape: BoxShape.rectangle,
                  ),
                  child:
                  Center(child:
                  Text(
                    "mannequin",
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: 'DM Sans', //#4F4F4F
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xFFFFFFFF),
                      //  fontWeight: FontWeight.bold,
                    ),
                  ),)
              ),

            ),

            Padding(
                padding:
                const EdgeInsets.fromLTRB(24, 450, 15, 0),
                child:
                Container(

                    height: 190,
                    child:
                    ListView.builder(
                        scrollDirection: Axis.horizontal,

                        itemCount: urls.length,
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
                                      const EdgeInsets.only(left: 20),
                                      child:
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  Match(id: secondUrls[index]),
                                            ),
                                          );
                                        }, child:
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
                                      ),)
                                  ),
                                  Padding(
                                      padding:
                                      const EdgeInsets.only(left: 20),
                                      child: index == 1 ? null :
                                      InkWell(
                                        onTap: () {
                                          // Navigator.push(
                                          // context,
                                          // MaterialPageRoute(
                                          // builder: (context) => Match(id: secondUrls[index]),
                                          // ),
                                          // );

                                        }, child:

                                      Container(
                                          width: 90,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF869578)
                                          ),
                                          child:
                                          Image.asset(
                                            Assets.basket,
                                            height: 85,
                                            width: 85,
                                          )
                                      ),)
                                  )
                                ]),
                          );
                        }
                    ))

            )

          ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        //  selectedItemColor: Colors.red,
        backgroundColor: Colors.black, //Color(0xFFFFFFFF),

        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.home, width: 20, height: 20, color: Colors.black,),
            //Icon(Icons.person),
            label: 'h',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.book, width: 20, height: 20, color: Colors.black,),
            label: 'h',
          ),

          BottomNavigationBarItem(
            icon: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFFF8D64),
                  //currentIndex == 2 ? Colors.orange : Colors.transparent,
                  shape: BoxShape.circle),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  Assets.camera, width: 20, height: 20, color: Colors.white,),
              ),
            ),
            label: '',
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.rectangle, width: 20, height: 20, color: Colors.black,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              Assets.personr, width: 20, height: 20, color: Colors.black,),
            label: '',
          ),
        ],
      ),

    );
  }

  void onTabTapped(int value) {
    currentIndex = value;
    switch (value) {
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
