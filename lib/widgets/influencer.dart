import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';


class Influencer extends StatelessWidget {
int currentIndex=0;

  @override
  Widget build(BuildContext context) {

    final List<String> urls = <String>[Assets.male1, Assets.male2, Assets.male3,Assets.male4,Assets.male5,Assets.male6];
    final List<String> names = <String>["Justin", "Timothee", "bille","Ariana","Zendaya","Ali"];
    return Scaffold(

      backgroundColor: Colors.white,//Color(0xFFE5E5E5),// 0xFFE5E5E5  Colors.white, 0xFFE5E5E5
        appBar: AppBar(
          elevation: 0,
          shadowColor: Colors.white ,
          leading: BackButton(
            color: Colors.black
          ),

          backgroundColor: Colors.white,//Color(0xFFE5E5E5),
          foregroundColor: Colors. white,//Color(0xFFE5E5E5) ,
          title: Text('Favorite Influencers',
            style: const TextStyle(
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w700,
                fontSize: 18 ,
                color:Color(0xFF30322F)//Color(0xFF30322F)
              //  fontWeight: FontWeight.bold,
            ),
          ),

        ),
      body:
    Padding(
    padding: const EdgeInsets.only(top: 0),child:
    Stack(
        children: [

        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Padding(
        padding: const EdgeInsets.fromLTRB(24,40,24,0),
          child: Row(
              mainAxisAlignment:
              MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SearchBarWidget(
                  width: 326,
            text: "Search in influences",
            onTap: (value) {
              showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) {
                    return SearchBottomSheet(
                      value: value,
                      callback: (geo) {


                      },
                    );
                  });
            },
            addressChanged: (value) {},
          ),
] )
             ),
              Padding(
                  padding:
                  const EdgeInsets.fromLTRB(24,20,24, 0),
                  child:
                  Text("Suggestion"
                  ,style: const TextStyle(fontSize: 16,fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,color: Colors.grey)),),

          Container(

              height:MediaQuery.of(context).size.height*.75,

            child:
                    Padding(

                      padding:
                      const EdgeInsets.fromLTRB(15,10,15, 0),
                      child:

                          // Text("Suggestion"
                          // ,style: const TextStyle(fontSize: 16,fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,color: Colors.grey)),
                          //
                          ListView.builder(
                          padding: const EdgeInsets.fromLTRB(0,1,0,8),
                          itemCount: urls.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                            //  height: 50,
                              //color: Colors.amber[colorCodes[index]],

                             // child: Center(child: Text('Entry ${entries[index]}')),
                              child:  Column(
                                mainAxisAlignment:MainAxisAlignment.start,//  MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:[
                                  SizedBox(height: 15,),
                                Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [

                                  Image.asset(urls[index],width: 75,height: 75,),
                                  SizedBox(width: 30,),
                                  Text(names[index]
                                      ,style: const TextStyle(
                                      fontFamily: 'DM Sans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16 ,
                                      color:Color(0xFF30322F)//Colors.red  ,#30322F
                                    //  fontWeight: FontWeight.bold,
                                  ),

                                  )
                                ])]),
                            );
                          }
                      )

                    ),

          ),

        ])
        ]


    ),)






    );





  }

  void onTabTapped(int value) {
    currentIndex=value;
  }
}
