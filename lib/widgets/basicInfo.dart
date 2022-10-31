import 'package:RoboDrop/widgets/homeRobo.dart';
import 'package:RoboDrop/widgets/mannequin.dart';
import 'package:RoboDrop/widgets/profile.dart';
import 'package:RoboDrop/widgets/stylist.dart';
import 'package:RoboDrop/widgets/verticalRuler.dart';
import 'package:date_format/date_format.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';
import 'PopUpMenuTile.dart';
import 'Match.dart';

class BasicInfo extends StatefulWidget {
  int currentIndex=0;

  @override
  State<BasicInfo> createState() => _BasicInfoState();

}
class _BasicInfoState extends State<BasicInfo> {
  String dropdownValue="";
  String dropdownValueReason="";
  String id=Assets.dress3;
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {


    DateTime selectedDate = DateTime.now();

    Future<void> _selectDate(BuildContext context) async {
      final DateTime? picked =await
      showDatePicker(
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.light(
                  primary: Color(0xFF48553D) , // header background color
                  //  onPrimary: Colors.black, // header text color
                  onSurface: Color(0xFF869578), // body text color
                ),
                textButtonTheme: TextButtonThemeData(
                  style: TextButton.styleFrom(
                    primary: Colors.red, // button text color
                  ),
                ),
              ),
              child: child!,
            );
          },
          context: context,
          initialDate:selectedDate,//selectedDateDateFormat.yMd().format(dateTime);,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101)
      );

      // final DateTime? picked = await showDatePicker(
      //
      //     context: context,
      //     initialDate: selectedDate,
      //     firstDate: DateTime(2015, 8),
      //     lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate) {
        setState(() {
          selectedDate = picked;
        });
      }
    }

    final List<String> urls = <String>[Assets.tshirt, Assets.jeen, Assets.shoe];
    final List<String> list = <String>['USA','Germany','United State' ];
    final List<String> secondList = <String>['ModeFasion', 'Style','Entertainment' ];
    return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),//0xFFE5E5E5),//  Colors.white,
        appBar: AppBar(
          elevation: 0,
          leading: BackButton(
              color: Colors.black
          ),
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

        ),
        body:

        Stack(
            children: [
            Container(
        height: MediaQuery.of(context).size.height*.7,
        child: SingleChildScrollView(child:

              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(26,5,15, 5),
                      child:
                      Text("What is your basic info?"
                          ,style: const TextStyle(fontSize: 22,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),),

                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(24,0,24, 0),
                      child:
                      Text("Please enter your information."
                          ,style: const TextStyle(fontSize: 14,fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,color: Colors.grey,fontWeight: FontWeight.w400,)),),

                    Padding(
                      padding:
                      const EdgeInsets.fromLTRB(24,30,24, 0),
                      child:
                      Text("Birthday"
                          ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),)

                    , Padding(
                        padding:
                        const EdgeInsets.fromLTRB(24,10,24, 0),
                        child:
                        Container(
                            width:  MediaQuery.of(context).size.width *0.85,
                            height: 50,
                            decoration: BoxDecoration(
                              //  border: Border.all(color: Colors.black87, width: 4),
                              border:  Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                              //color:Colors.red,
                              shape: BoxShape.rectangle,
                            ),
                            child:
                            Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 30,top: 15),
                                    child:
                                    // Text("${selectedDate.toLocal()}".split(' ')[0],

                                    Text("${formatDate(DateTime(selectedDate.year, selectedDate.month, selectedDate.day), [yyyy, '-', M, '-', d])}",
                                        style: const TextStyle(fontSize: 15,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w400, )),

                                  ),
                                  Padding(
                                      padding:
                                      const EdgeInsets.only(right: 20,top: 10),
                                      child:

                                      // Center(
                                      // child: Column(
                                      // mainAxisSize: MainAxisSize.min,
                                      // children: <Widget>[
                                      // Text("${selectedDate.toLocal()}".split(' ')[0]),
                                      // SizedBox(height: 20.0,),
                                      // RaisedButton(
                                      // onPressed: () => _selectDate(context),
                                      // child: Text('Select date'),
                                      // ),
                                      // ],
                                      // )),

                                      GestureDetector(
                                          onTap: () {_selectDate(context);},
                                          child:
                                          Container(
                                              width:  30,
                                              height: 26,
                                              child:
                                              Image.asset(
                                                Assets.calender,
                                                height: 14,
                                                width: 20,
                                              )

                                          )
                                      )
                                  )
                                ])

                        ))

                    ,Padding(
                      padding:
                      const EdgeInsets.fromLTRB(24,30,24, 0),
                      child:
                      Text("Location"
                          ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),)

                    , Padding(
                        padding:
                        const EdgeInsets.fromLTRB(24,10,24, 0),
                        child:
                        Container(
                            width:  MediaQuery.of(context).size.width *0.85,
                            height: 50,
                            decoration: BoxDecoration(
                              //  border: Border.all(color: Colors.black87, width: 4),
                              border:  Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                              //color:Colors.red,
                              shape: BoxShape.rectangle,
                            ),
                            child:

                            DropdownButtonFormField<String>(
                              //  isExpanded: true,
                              decoration: InputDecoration.collapsed(hintText: 'Location'),
                              // items:  list.map(
                              //       (curItem) {
                              //     if (curItem == dropdownValue) {
                              //       return DropdownMenuItem(
                              //         value: curItem,
                              //         child: Text(curItem.value.toString(),
                              //             style: TextStyle(color: Colors.red)),
                              //       );
                              //     } else {
                              //       return DropdownMenuItem(
                              //         value: curItem,
                              //         child: Text(curItem.value.toString(),
                              //             style:
                              //             TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
                              //       );
                              //     }
                              //   },).toList()
                              items: list.map<DropdownMenuItem<String>>((var value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child:
                                  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 20,top: 0),
                                    child:

                                    Text(
                                        value,
                                        style: const TextStyle(fontSize: 15,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w400, )),

                                  ),

                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  dropdownValue = value!;
                                });},
                              selectedItemBuilder: (BuildContext context) {

                                return list.map((String value) {
                                  return Align(
                                      alignment: Alignment.bottomRight,
                                      child:
                                      Padding(
                                          padding:
                                          const EdgeInsets.only(left: 18,top: 3),child:
                                      Container(
                                          width: 150,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(13),
                                            color:Color(0xFFD4583D),//bgcolor,//Color(0xFFE5E7E4),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child:
                                          Center(child:
                                          Text(dropdownValue,
                                            style:  TextStyle(
                                              fontFamily: 'DM Sans',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14 ,
                                              color:Color (0xFF30322F),//Color(0xFF30322F)
                                              //  fontWeight: FontWeight.bold,
                                            ),
                                          ))))

                                  );
                                }).toList();
                              },
                              hint:    Padding(
                                padding:
                                const EdgeInsets.only(left: 20,top: 10),child: Text('Your Location',
                                style: const TextStyle(fontSize: 14,fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,color: Colors.grey,fontWeight: FontWeight.w400,),
                              ),),

                            )

                        )
                    )

                    ,Padding(
                      padding:
                      const EdgeInsets.fromLTRB(24,30,24, 0),
                      child:
                      Text("Reason"
                          ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),)

                    , Padding(
                        padding:
                        const EdgeInsets.fromLTRB(24,10,24, 0),
                        child:
                        Container(
                            width:  MediaQuery.of(context).size.width *0.85,
                            height: 50,
                            decoration: BoxDecoration(
                              //  border: Border.all(color: Colors.black87, width: 4),
                              border:  Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(12),
                              //color:Colors.red,
                              shape: BoxShape.rectangle,
                            ),
                            child:
                            DropdownButtonFormField<String>(
                              isExpanded: true,
                              decoration: InputDecoration.collapsed(hintText: ''),
                              items: secondList.map<DropdownMenuItem<String>>((var value) {
                                return DropdownMenuItem<String>(
                                    value:

                                    value,
                                    child:Padding(
                                      padding:
                                      const EdgeInsets.only(left: 20,top: 10),
                                      child:

                                      Text(
                                        value,

                                        style: const TextStyle(fontSize: 15,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w400, ),

                                        // style: const TextStyle(fontSize: 15,color: Color(0xFF222321),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w400, ),
                                        textAlign: TextAlign.center,
                                      ),)

                                );
                              }).toList(),
                              onChanged: (String? value) {
                                setState(() {
                                  dropdownValueReason = value!;
                                });},
                              selectedItemBuilder: (BuildContext context) {

                                return list.map((String value) {
                                  return Align(
                                      alignment: Alignment.centerLeft,
                                      child:
                                      Padding(
                                          padding:
                                          const EdgeInsets.only(left: 18,top: 3),child:
                                      Container(
                                          width: 150,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(13),
                                            color:Color(0xFFD4583D),//bgcolor,//Color(0xFFE5E7E4),
                                            shape: BoxShape.rectangle,
                                          ),
                                          child:
                                          Center(child:
                                          Text(dropdownValueReason,
                                            style:  TextStyle(
                                              fontFamily: 'DM Sans',
                                              fontWeight: FontWeight.w700,
                                              fontSize: 14 ,
                                              color:Color (0xFF30322F),//Color(0xFF30322F)
                                              //  fontWeight: FontWeight.bold,
                                            ),
                                          ))))

                                  );
                                }).toList();
                              },

                              hint: Padding(
                                  padding:
                                  const EdgeInsets.only(left: 20,top: 10),child: Text('Select your reason to use this app',
                                style: const TextStyle(fontSize: 14,fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,color: Colors.grey,fontWeight: FontWeight.w400,),)

                              ),

                            )
                        ))

                    ,Padding(
                      padding:
                      const EdgeInsets.fromLTRB(24,20,24, 0),
                      child:
                      Text("Occupation"
                          ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),)

                    , Padding(
                        padding:
                        const EdgeInsets.fromLTRB(24,10,24, 0),
                        child:
                        Container(
                          width:  MediaQuery.of(context).size.width *0.85,
                          height: 50,
                          decoration: BoxDecoration(
                            //  border: Border.all(color: Colors.black87, width: 4),
                            border:  Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(12),
                            //color:Colors.red,
                            shape: BoxShape.rectangle,
                          ),
                          child:
                          Padding(
                            padding:
                            const EdgeInsets.fromLTRB(24,10,24, 0),
                            child:
                            Text("e.g Teacher"
                                , style: const TextStyle(fontSize: 14,fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,color: Colors.grey,fontWeight: FontWeight.w400, )),),

                        )              )]

              ),
        )
         ),
            Expanded(
                child: Align(
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
                          color:Color(0xFF869578) ,
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
                                  builder: (context) => VerticalRuler(),
                                ),
                              );},child:
                        Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(child:

                              Text(
                                "Next",
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
              ),
        // Positioned(
        //         left: 28,
        //         bottom:  0,//MediaQuery.of(context).size.height*0.04,
        //         child:
        //         Container(
        //             width:  MediaQuery.of(context).size.width*0.85,
        //             height: 56,
        //             decoration: BoxDecoration(
        //               color:Color(0xFF869578) ,
        //               border:  Border.all(color: Colors.grey),
        //               borderRadius: BorderRadius.circular(12),
        //               //color:Colors.red,
        //               shape: BoxShape.rectangle,
        //             ),
        //             child:
        //             InkWell(
        //                 onTap: () {
        //                   Navigator.push(
        //                     context,
        //                     MaterialPageRoute(
        //                       builder: (context) => VerticalRuler(),
        //                     ),
        //                   );},child:
        //             Row(
        //                 mainAxisAlignment:
        //                 MainAxisAlignment.center,
        //                 crossAxisAlignment: CrossAxisAlignment.center,
        //                 children: [
        //                   Center(child:
        //
        //                   Text(
        //                     "Next",
        //                     textAlign: TextAlign.center,
        //                     style: const TextStyle(
        //                         fontFamily: 'DM Sans',
        //                         fontWeight: FontWeight.w500,
        //                         fontSize: 16 ,
        //                         color:Color(0xFFFFFFFF)//Colors.red  ,#30322F
        //                       //  fontWeight: FontWeight.bold,
        //                     ),
        //                   ),
        //                   ),
        //                   SizedBox(width: 12,),
        //                   Image.asset(
        //                     Assets.arrow3,
        //                     height: 14,
        //                     width: 20,
        //                   )
        //
        //                 ])
        //             )
        //         ),)
   ]
        ));
  }

}
