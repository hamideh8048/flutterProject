import 'package:RoboDrop/widgets/dressRoom.dart';
import 'package:RoboDrop/widgets/filter.dart';
import 'package:RoboDrop/widgets/homeRobo.dart';
import 'package:RoboDrop/widgets/profile.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';
import 'outfit.dart';


class Styist extends StatefulWidget {

  @override
  State<Styist> createState() => _StyistState();
}

class _StyistState extends State<Styist> {

  bool showDressroom=false;
  int selectedIndex=0;
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
  int currentIndex = 0;
  @override
  void initState() {
    super.initState();
    img = imgUp;
  }
  @override
  Widget build(BuildContext context) {

// example: Image.asset('images/camera.png',)

    //img = imgUp;
    final List<String> urls = <String>[Assets.dress, Assets.dress2, ];
    final List<String> list = <String>['A','B', ];
    final List<String> secondUrls = <String>[Assets.dress3, Assets.dress4,Assets.dress5, Assets.dress6,Assets.dress7, Assets.dress8 ];
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
              child: Text(
                "Stylist",
                style: TextStyle(
                  color: Colors.black,
                ),
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

          Column(

        mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                mainAxisAlignment:
                MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

              Padding(
                padding:
                const EdgeInsets.fromLTRB(20,15,5, 20),
                child:
                Container(
                    width:  100,
                    height: 50,
                    decoration: BoxDecoration(
                      //  border: Border.all(color: Colors.black87, width: 4),
                      border:  Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(12),
                      //color:Colors.red,
                      shape: BoxShape.rectangle,
                    ),
                    child:
                        Center(child:

                        DropdownButtonFormField<String>(
                          isExpanded: true,
                          decoration: InputDecoration.collapsed(hintText: 'please'),
                          items: list.map<DropdownMenuItem<String>>((var value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Center(
                                child: Text(
                                  value,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          }).toList(),
                        hint:Center(child: Text('Pattern')),
                              onChanged: (_) {},
                        )
                )
              ),
              ),
                  Padding(
                    padding:
                    const EdgeInsets.fromLTRB(5,15,10, 20),
                    child:
                    Container(
                        width:  100,
                        height: 50,
                        decoration: BoxDecoration(
                          //  border: Border.all(color: Colors.black87, width: 4),
                          border:  Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12),
                          //color:Colors.red,
                          shape: BoxShape.rectangle,
                        ),
                        child:
                        Center(child:

                        DropdownButtonFormField<String>(
                          isExpanded: true,
                          decoration: InputDecoration.collapsed(hintText: 'please'),
                          items: list.map<DropdownMenuItem<String>>((var value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Center(
                                child: Text(
                                  value,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          }).toList(),
                          hint:Center(child: Text('Material')),
                          onChanged: (_) {},
                        )
                        )
                    ),
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.fromLTRB(0,15,15, 20),
                    child:
                    Container(
                        width:  110,
                        height: 50,
                        decoration: BoxDecoration(
                          //  border: Border.all(color: Colors.black87, width: 4),
                          border:  Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(12),
                          //color:Colors.red,
                          shape: BoxShape.rectangle,
                        ),
                        child:
                        Center(child:

                        DropdownButtonFormField<String>(
                          isExpanded: true,
                          decoration: InputDecoration.collapsed(hintText: 'please'),
                          items: list.map<DropdownMenuItem<String>>((var value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Center(
                                child: Text(
                                  value,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          }).toList(),
                          hint:Center(child: Text('Categories')),
                          onChanged: (_) {},
                        )
                        )
                    ),
                  ),
              ]),


            ],

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
              //  border: Border.all(color: Colors.black87, width: 4),
              border:  Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              //  color:Color(0xFFE3E3E3),
                shape: BoxShape.rectangle,
                ),
                child:
                InkWell(
                    onTap: ()
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Outfit(id: secondUrls[index])));

                    },child:
                Image.asset(
                                  secondUrls[index],
                                  height: 191,
                                  width: 155,
                                ))

              ),
             selectedIndex==index?
              Positioned(
                    right: 5,
                    bottom: 7,
                    child:
                    GestureDetector(
                    //your image is here
                    child:
                    img,
                    onTap: () {
                setState(() {
                selectedIndex=index;
                // when it is pressed
               // img=imgDown;
                  if(img==imgUp){
                img =  imgDown;
                  showDressroom=true;}
                  else {
                    showDressroom=false;
                    img = imgUp;
                  }

                });
                },

                    )
                ):

             Positioned(
                 right: 5,
                 bottom: 7,
                 child:
                 GestureDetector(
                   //your image is here
                   child:
                   imgUp,

                   onTap: () {
                     setState(() {
                       selectedIndex=index;
                       // when it is pressed
                       // img=imgDown;
                       if(img==imgUp) {
                         img = imgDown;
                       showDressroom=true;
                       }
                       else {
                         img = imgUp;
                         showDressroom=false;
                       }
                     });
                   },


                 )

             )


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
                width:  327,
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
