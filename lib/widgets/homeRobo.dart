import 'package:RoboDrop/widgets/profile.dart';
import 'package:RoboDrop/widgets/stylist.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';
import 'closet.dart';


class HomeRobo extends   StatefulWidget {

  @override
  State<HomeRobo> createState() => _HomeRoboState();
}
class _HomeRoboState extends State<HomeRobo> {
int currentIndex=0;

  @override
  Widget build(BuildContext context) {

    final List<String> urls = <String>[Assets.dress, Assets.dress2, ];
    final List<String> secondUrls = <String>[Assets.coat, Assets.coat2, ];
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),//0xFFE5E5E5),//  Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFFFFFFF),

          title:

          Text('RoboDrobe',
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
          Column(
        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding:
                const EdgeInsets.fromLTRB(26,15,15, 20),
                child:
                Text("Today’s weather"
                    ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),
              Padding(
                      padding:
                      const EdgeInsets.fromLTRB(18,0,15, 0),
                      child:
                      Container(
                        width: MediaQuery.of(context).size.height*.85,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(Assets.weather),
                            fit: BoxFit.cover,
                          ),
                        ),)
              ),

            ],

          ),
          Padding(
            padding:
            const EdgeInsets.fromLTRB(26,190,15, 20),
            child:
            Text("Trending..."
                ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),
          Padding(
              padding:
              const EdgeInsets.fromLTRB(18,230,15, 0),
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
                          Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [


                                Padding(
                                    padding:
                                    const EdgeInsets.only(left: 10),
                                    child:
                                    Container(
                                      width: 160,
                                      height: 180,
                                      decoration: BoxDecoration(

                                         //Color(0xFFFF8D64) ,//currentIndex == 2 ? Colors.orange : Colors.transparent,
                                     //     shape: BoxShape.rectangle
                                      ),

                                          child:
                                          Image.asset(
                                            urls[index],
                                            height: 180,
                                            width: 155,
                                          )
                                      ),
                                    )


                              ]),
                        );
                      }
                  ))

          ),
          Padding(
            padding:
            const EdgeInsets.fromLTRB(26,430,15, 20),
            child:
            Text("Based on your MOOD"
                ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),
          Padding(
              padding:
              const EdgeInsets.fromLTRB(18,460,15, 0),
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
                          Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.only(left: 10),
                                  child:
                                  Container(
                                      width: 160,
                                      height: 180,
                                      decoration: BoxDecoration(

                                        //Color(0xFFFF8D64) ,//currentIndex == 2 ? Colors.orange : Colors.transparent,
                                        //     shape: BoxShape.rectangle
                                      ),

                                      child:
                                      Image.asset(
                                        secondUrls[index],
                                        height: 180,
                                        width: 155,
                                      )
                                  ),
                                )


                              ]),
                        );
                      }
                  ))

          ),
          // Positioned(
          //   left: 50,
          //   bottom: 10,
          //   child:
          //   Container(
          //       width:  327,
          //       height: 56,
          //
          //       decoration: BoxDecoration(
          //         color:Color(0xFF869578) ,
          //         border:  Border.all(color: Colors.grey),
          //         borderRadius: BorderRadius.circular(12),
          //         //color:Colors.red,
          //         shape: BoxShape.rectangle,
          //       ),
          //       child:
          //       null
          //
          //   ),)
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
