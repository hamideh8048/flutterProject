
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../component/search_bar.dart';
import '../component/search_bottomsheet.dart';
import '../constants/Assets.dart';

class Filter extends StatefulWidget {
 // Filter(this.text);

  //final String text;
  bool isExpanded = false;

  @override
  _FilterState createState() => new _FilterState();
}

class _FilterState extends State<Filter> {
  bool visibilityTag = false;
  bool visibilityObs = false;

  bool _visible = false;
  bool _pricevisible = false;
  bool _brandVisible = false;
  bool _patternVisible = false;
  bool _colorVisible = false;
  bool _OccasionVisible = false;
  bool _materialVisible = false;
  void _toggle() {
    setState(() {
      _visible = !_visible;
    });}
  void _toggleBrand() {
    setState(() {
      _brandVisible = !_brandVisible;
    });}
  void _togglePrice() {
    setState(() {
      _pricevisible = !_pricevisible;
    });}
  void _toggleColor() {
    setState(() {
      _colorVisible = !_colorVisible;
    });}
  void _togglePatter() {
    setState(() {
      _patternVisible = !_patternVisible;
    });}
    void _toggleMaterial() {
      setState(() {
        _materialVisible = !_materialVisible;
      });
    }
  void _toggleOccasion() {
    setState(() {
      _OccasionVisible = !_OccasionVisible;
    });
  }
  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "tag"){
        visibilityTag = visibility;
        _visible = !_visible;
      }
      if (field == "obs"){
        visibilityObs = visibility;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),//0xFFE5E5E5),//  Colors.white,
      appBar: AppBar(
          elevation: 0,
          leading: BackButton(
              color: Colors.black
          ),
          backgroundColor: Color(0xFFFFFFFF),
          title:
          Text('Filter',
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
          Container(
          height: MediaQuery.of(context).size.height*.9,
          child: SingleChildScrollView(child:
            Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(24,10,24,0),
                      child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            SearchBarWidget(
                              width: 300,
                              text: "Search in filters",
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

                  //''''''''
                  Padding(
                      padding:
                      const EdgeInsets.only(left: 25,right: 20,top:28,bottom: 10),
                      child:

                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                           // SizedBox(width: 10,),
                            Text("Just Suggest from my Closet"
                                ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                            Padding(
                                padding:
                                const EdgeInsets.only(right: 20),
                                child:
                                Container(
                                    width:  50,
                                    height: 26,


                                    child: FlutterSwitch(//Switch(
                                      width: 50,
                                      activeColor: Colors.grey,//primaryColor,
                                      value:true,
                                      // onChanged: (bool value) {
                                      //
                                      // }
                                      onToggle: (bool value) {  },)

                                )
                            )
                          ])),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Colors.black,
                  ),
                  Padding(
                      padding:
                      const EdgeInsets.only(left: 25,right: 20,top:18,bottom: 10),
                      child:

                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // SizedBox(width: 10,),
                            Text("Based on my occupations"
                                ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                            Padding(
                                padding:
                                const EdgeInsets.only(right: 20),
                                child:
                                Container(
                                    width:  50,
                                    height: 26,


                                    child: FlutterSwitch(//Switch(
                                      width: 50,
                                      activeColor: Colors.grey,//primaryColor,
                                      value:true,
                                      // onChanged: (bool value) {
                                      //
                                      // }
                                      onToggle: (bool value) {  },)

                                )
                            )
                          ])),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Colors.black,
                  ),

                  Padding(
                      padding:
                      const EdgeInsets.only(left: 25,right: 20,top:10,bottom: 0),
                      child:

                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // SizedBox(width: 10,),
                            Text("Categories"
                                ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                            Padding(
                                padding:
                                const EdgeInsets.only(right: 20),
                                child:
                          GestureDetector(
                          onTap: () {_toggle() ;},
                          child:
                                Container(
                                    width:  30,
                                    height: 26,
                                    child:
                                    Image.asset(
                                      Assets.upArrow,
                                      height: 14,
                                      width: 20,
                                    )

                                )
                            ))
                          ])),
                  Padding(
                      padding:
                      const EdgeInsets.only(left:30,right:20 ,top:10,bottom: 0),
                      child:


                   Visibility(
                  visible: _visible,
                  child:
                  Column(
                  mainAxisAlignment:
                  MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Row(
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                      SearchBarWidget(
                        width: 310,
                      text: "Search in filters",
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
                   , Padding(
                        padding:
                    const EdgeInsets.only(left: 0,right: 20,top:10,bottom: 10),
                    child:
                    Row(
                        mainAxisAlignment:
                        MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: 64,
                              height: 36,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                              color:Color(0xFFE5E7E4),
                                shape: BoxShape.rectangle,
                              ),
                              child:
                              InkWell(
                                  onTap: ()
                                  {

                                  },child:
                                  Center(child:
                                  Text('Tops',
                                  style: const TextStyle(
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14 ,
                                  color:Color(0xFF30322F)//Colors.red  ,#30322F
    //  fontWeight: FontWeight.bold,
    ),
                                  ))))

                        ,   Padding(
                        padding:
                        const EdgeInsets.only(left: 18,right: 20),
                        child:
                          Container(
                              width: 90,
                              height: 36,
                              decoration: BoxDecoration(
                                //  border: Border.all(color: Colors.black87, width: 4),
                                // border:  Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12),
                                color:Color(0xFFE5E7E4),
                                shape: BoxShape.rectangle,
                              ),
                              child:
                              InkWell(
                                  onTap: ()
                                  {

                                  },child:
                              Center(child:
                              Text('Bottoms',
                                  style: const TextStyle(
                                  fontFamily: 'DM Sans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14 ,
                                  color:Color(0xFF30322F)//Colors.red  ,#30322F
                                  //  fontWeight: FontWeight.bold,
    ),
                              )
                              )))
                          )

                          ,  Container(
                              width: 90,
                              height: 36,
                              decoration: BoxDecoration(
                                //  border: Border.all(color: Colors.black87, width: 4),
                                // border:  Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(12),
                                color:Color(0xFFE5E7E4),
                                shape: BoxShape.rectangle,
                              ),
                              child:
                              InkWell(
                                  onTap: ()
                                  {

                                  },child:
                              Center(child:
                              Text('Outwears',
                                style: const TextStyle(
                                    fontFamily: 'DM Sans',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14 ,
                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                  //  fontWeight: FontWeight.bold,
                                ),
                              )
                              )))
                        ] )



                  )
                  ,  Padding(
                        padding:
                        const EdgeInsets.only(left: 0,right: 20,top:0,bottom: 10),
                        child:
                        Row(
                            mainAxisAlignment:
                            MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  width: 64,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color:Color(0xFFE5E7E4),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child:
                                  InkWell(
                                      onTap: ()
                                      {

                                      },child:
                                  Center(child:
                                  Text('Jeen',
                                    style: const TextStyle(
                                        fontFamily: 'DM Sans',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 14 ,
                                        color:Color(0xFF30322F)//Colors.red  ,#30322F
                                      //  fontWeight: FontWeight.bold,
                                    ),
                                  ))))

                              ,   Padding(
                                  padding:
                                  const EdgeInsets.only(left: 18,right: 20),
                                  child:
                                  Container(
                                      width: 90,
                                      height: 36,
                                      decoration: BoxDecoration(
                                        //  border: Border.all(color: Colors.black87, width: 4),
                                        // border:  Border.all(color: Colors.grey),
                                        borderRadius: BorderRadius.circular(12),
                                        color:Color(0xFFE5E7E4),
                                        shape: BoxShape.rectangle,
                                      ),
                                      child:
                                      InkWell(
                                          onTap: ()
                                          {

                                          },child:
                                      Center(child:
                                      Text('Sweater',
                                        style: const TextStyle(
                                            fontFamily: 'DM Sans',
                                            fontWeight: FontWeight.w700,
                                            fontSize: 14 ,
                                            color:Color(0xFF30322F)//Colors.red  ,#30322F
                                          //  fontWeight: FontWeight.bold,
                                        ),
                                      )
                                      )))
                              )


                            ] )



                    )
                       ])


    )
                  ),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Colors.black,
                  ),
                  Padding(
                      padding:
                      const EdgeInsets.only(left: 25,right: 20,top:10,bottom: 10),
                      child:

                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // SizedBox(width: 10,),
                            Text("Material"
                                ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                            Padding(
                                padding:
                                const EdgeInsets.only(right: 20),
                                child:
                                GestureDetector(
                                    onTap: () {_toggleMaterial() ;},
                                    child:
                                    Container(
                                        width:  30,
                                        height: 26,
                                        child:
                                        Image.asset(
                                          Assets.upArrow,
                                          height: 14,
                                          width: 20,
                                        )

                                    )
                                ))
                          ])),
                  Padding(
                      padding:
                      const EdgeInsets.only(left:30,right:20 ,top:0,bottom: 0),
                      child:


                      Visibility(
                          visible: _materialVisible,
                          child:
                          Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                 Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 20,top:5,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 64,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Cotton',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                          ,   Padding(
                                              padding:
                                              const EdgeInsets.only(left: 18,right: 20),
                                              child:
                                              Container(
                                                  width: 90,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    //  border: Border.all(color: Colors.black87, width: 4),
                                                    // border:  Border.all(color: Colors.grey),
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFE5E7E4),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  InkWell(
                                                      onTap: ()
                                                      {

                                                      },child:
                                                  Center(child:
                                                  Text('Linen',
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 14 ,
                                                        color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                  )))
                                          )

                                          ,  Container(
                                              width: 90,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                //  border: Border.all(color: Colors.black87, width: 4),
                                                // border:  Border.all(color: Colors.grey),
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Polyster',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                              )))
                                        ] )

                                )
                                ,  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 20,top:0,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 64,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Fur',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                          ,   Padding(
                                              padding:
                                              const EdgeInsets.only(left: 12,right: 10),
                                              child:
                                              Container(
                                                  width: 72,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    //  border: Border.all(color: Colors.black87, width: 4),
                                                    // border:  Border.all(color: Colors.grey),
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFE5E7E4),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  InkWell(
                                                      onTap: ()
                                                      {

                                                      },child:
                                                  Center(child:
                                                  Text('Nylon',
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 14 ,
                                                        color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                  )))

                                          )
                                          , Container(
                                              width: 64,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Denim',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))
                                          ,   Padding(
                                              padding:
                                              const EdgeInsets.only(left: 5),
                                              child:
                                              Container(
                                                  width: 56,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    //  border: Border.all(color: Colors.black87, width: 4),
                                                    // border:  Border.all(color: Colors.grey),
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFE5E7E4),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  InkWell(
                                                      onTap: ()
                                                      {

                                                      },child:
                                                  Center(child:
                                                  Text('Silk',
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 14 ,
                                                        color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                  )))

                                          )
                                        ] )

                                )

                              ])


                      )
                  ),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Colors.black,
                  ),
                  //''''''''''''Ocaasion
                  Padding(
                      padding:
                      const EdgeInsets.only(left: 25,right: 20,top:0,bottom: 10),
                      child:

                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // SizedBox(width: 10,),
                            Text("Occasion"
                                ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                            Padding(
                                padding:
                                const EdgeInsets.only(right: 20),
                                child:
                                GestureDetector(
                                    onTap: () {_toggleOccasion() ;},
                                    child:
                                    Container(
                                        width:  30,
                                        height: 26,
                                        child:
                                        Image.asset(
                                          Assets.upArrow,
                                          height: 14,
                                          width: 20,
                                        )

                                    )
                                ))
                          ])),
                  Padding(
                      padding:
                      const EdgeInsets.only(left:30,right:20 ,top:0,bottom: 0),
                      child:


                      Visibility(
                          visible: _OccasionVisible,
                          child:
                          Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 20,top:5,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 64,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Daily',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                          ,   Padding(
                                              padding:
                                              const EdgeInsets.only(left: 18,right: 20),
                                              child:
                                              Container(
                                                  width: 90,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    //  border: Border.all(color: Colors.black87, width: 4),
                                                    // border:  Border.all(color: Colors.grey),
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFE5E7E4),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  InkWell(
                                                      onTap: ()
                                                      {

                                                      },child:
                                                  Center(child:
                                                  Text('Work',
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 14 ,
                                                        color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                  )))
                                          )

                                          ,  Container(
                                              width: 90,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                //  border: Border.all(color: Colors.black87, width: 4),
                                                // border:  Border.all(color: Colors.grey),
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Date',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                              )))
                                        ] )

                                )
                                ,  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 20,top:0,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 64,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Formal',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                          ,   Padding(
                                              padding:
                                              const EdgeInsets.only(left: 18,right: 18),
                                              child:
                                              Container(
                                                  width: 90,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    //  border: Border.all(color: Colors.black87, width: 4),
                                                    // border:  Border.all(color: Colors.grey),
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFE5E7E4),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  InkWell(
                                                      onTap: ()
                                                      {

                                                      },child:
                                                  Center(child:
                                                  Text('Sport',
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 14 ,
                                                        color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                  )))

                                          )
                                          , Container(
                                              width: 90,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Party',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                        ] )

                                )

                              ])


                      )
                  ),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Colors.black,
                  ),

                  //''''''''''''pattern
                  Padding(
                      padding:
                      const EdgeInsets.only(left: 25,right: 20,top:0,bottom: 10),
                      child:

                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // SizedBox(width: 10,),
                            Text("Pattern"
                                ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                            Padding(
                                padding:
                                const EdgeInsets.only(right: 20),
                                child:
                                GestureDetector(
                                    onTap: () {_togglePatter() ;},
                                    child:
                                    Container(
                                        width:  30,
                                        height: 26,
                                        child:
                                        Image.asset(
                                          Assets.upArrow,
                                          height: 14,
                                          width: 20,
                                        )

                                    )
                                ))
                          ])),
                  Padding(
                      padding:
                      const EdgeInsets.only(left:30,right:20 ,top:0,bottom: 10),
                      child:


                      Visibility(
                          visible: _patternVisible,
                          child:
                          Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 10,top:5,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 106,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('SolidColor',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                          ,   Padding(
                                              padding:
                                              const EdgeInsets.only(left: 18,right: 20),
                                              child:
                                              Container(
                                                  width: 90,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    //  border: Border.all(color: Colors.black87, width: 4),
                                                    // border:  Border.all(color: Colors.grey),
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFE5E7E4),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  InkWell(
                                                      onTap: ()
                                                      {

                                                      },child:
                                                  Center(child:
                                                  Text('Checked',
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 14 ,
                                                        color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                  )))
                                          )

                                          ,  Container(
                                              width: 83,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                //  border: Border.all(color: Colors.black87, width: 4),
                                                // border:  Border.all(color: Colors.grey),
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Striped',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                              )))
                                        ] )

                                )
                                ,  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 20,top:0,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 64,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Formal',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                          ,   Padding(
                                              padding:
                                              const EdgeInsets.only(left: 18,right: 18),
                                              child:
                                              Container(
                                                  width: 87,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    //  border: Border.all(color: Colors.black87, width: 4),
                                                    // border:  Border.all(color: Colors.grey),
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFE5E7E4),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  InkWell(
                                                      onTap: ()
                                                      {

                                                      },child:
                                                  Center(child:
                                                  Text('Graphic',
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 14 ,
                                                        color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                  )))

                                          )
                                          , Container(
                                              width: 80,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Party',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                        ] )

                                )

                              ])


                      )
                  ),
                  //.........colors
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Colors.black,
                  ),
                  Padding(
                      padding:
                      const EdgeInsets.only(left: 25,right: 20,top:0,bottom: 10),
                      child:

                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // SizedBox(width: 10,),
                            Text("Colors"
                                ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                            Padding(
                                padding:
                                const EdgeInsets.only(right: 20),
                                child:
                                GestureDetector(
                                    onTap: () {_toggleColor() ;},
                                    child:
                                    Container(
                                        width:  30,
                                        height: 26,
                                        child:
                                        Image.asset(
                                          Assets.upArrow,
                                          height: 14,
                                          width: 20,
                                        )

                                    )
                                ))
                          ])),
                  Padding(
                      padding:
                      const EdgeInsets.only(left:30,right:20 ,top:0,bottom: 10),
                      child:


                      Visibility(
                          visible: _colorVisible,
                          child:
                          Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 20,top:5,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 84,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('White',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                          ,   Padding(
                                              padding:
                                              const EdgeInsets.only(left: 18,right: 10),
                                              child:
                                              Container(
                                                  width: 80,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    //  border: Border.all(color: Colors.black87, width: 4),
                                                    // border:  Border.all(color: Colors.grey),
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFE2E8F0),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  InkWell(
                                                      onTap: ()
                                                      {

                                                      },child:
                                                  Center(child:
                                                  Text('Cream',
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 14 ,
                                                        color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                  )))
                                          )

                                          ,  Container(
                                              width: 90,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                //  border: Border.all(color: Colors.black87, width: 4),
                                                // border:  Border.all(color: Colors.grey),
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFFFD3AB),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Beige',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                              )))
                                        ] )

                                )
                                , Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 20,top:0,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 100,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFF2F2F2),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Light Gray',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                          ,   Padding(
                                              padding:
                                              const EdgeInsets.only(left: 10,right: 10),
                                              child:
                                              Container(
                                                  width: 80,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    //  border: Border.all(color: Colors.black87, width: 4),
                                                    // border:  Border.all(color: Colors.grey),
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFF4F4F4F),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  InkWell(
                                                      onTap: ()
                                                      {

                                                      },child:
                                                  Center(child:
                                                  Text('Black',
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 14 ,
                                                        color:Color(0xFFF2F2F2)//Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                  )))

                                          )
                                          , Container(
                                              width: 90,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFFFD0E1),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Light Pink',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                        ] )

                                )
                                , Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 20,top:0,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 100,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFF97FFEC),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Turquoise',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))
                                          , Padding(
                                              padding:
                                              const EdgeInsets.only(left: 10,right: 10),
                                              child:
                                              Container(
                                                  width: 80,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    //  border: Border.all(color: Colors.black87, width: 4),
                                                    // border:  Border.all(color: Colors.grey),
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFCCF5AC),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  InkWell(
                                                      onTap: ()
                                                      {

                                                      },child:
                                                  Center(child:
                                                  Text('Green',
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 14 ,
                                                        color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                  )))

                                          )
                                          , Container(
                                              width: 90,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFC7E1FF),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Light Blue',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                        ] )

                                )
                                , Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 20,top:0,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 100,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFAF60FF),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Purpulr',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFFF2F2F2)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))
                                          , Padding(
                                              padding:
                                              const EdgeInsets.only(left: 10,right: 10),
                                              child:
                                              Container(
                                                  width: 80,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    //  border: Border.all(color: Colors.black87, width: 4),
                                                    // border:  Border.all(color: Colors.grey),
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFF243D7C),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  InkWell(
                                                      onTap: ()
                                                      {

                                                      },child:
                                                  Center(child:
                                                  Text('Navy',
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 14 ,
                                                        color:Color(0xFFF2F2F2)//Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                  )))

                                          )
                                          , Container(
                                              width: 90,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFFFC633),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Gold',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF0F172A)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                        ] )

                                )
                              ])


                      )
                  ),
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Colors.black,
                  ),
                  //''''''''''''Brand
                  Padding(
                      padding:
                      const EdgeInsets.only(left: 25,right: 20,top:0,bottom: 10),
                      child:

                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // SizedBox(width: 10,),
                            Text("Brands"
                                ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                            Padding(
                                padding:
                                const EdgeInsets.only(right: 20),
                                child:
                                GestureDetector(
                                    onTap: () {_toggleBrand() ;},
                                    child:
                                    Container(
                                        width:  30,
                                        height: 26,
                                        child:
                                        Image.asset(
                                          Assets.upArrow,
                                          height: 14,
                                          width: 20,
                                        )

                                    )
                                ))
                          ])),
                  Padding(
                      padding:
                      const EdgeInsets.only(left:30,right:20 ,top:0,bottom: 10),
                      child:


                      Visibility(
                          visible: _brandVisible,
                          child:
                          Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 10,top:5,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 90,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Zara',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                          ,   Padding(
                                              padding:
                                              const EdgeInsets.only(left: 18,right: 20),
                                              child:
                                              Container(
                                                  width: 90,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    //  border: Border.all(color: Colors.black87, width: 4),
                                                    // border:  Border.all(color: Colors.grey),
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFE5E7E4),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  InkWell(
                                                      onTap: ()
                                                      {

                                                      },child:
                                                  Center(child:
                                                  Text('Nike',
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 14 ,
                                                        color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                  )))
                                          )

                                          ,  Container(
                                              width: 83,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                //  border: Border.all(color: Colors.black87, width: 4),
                                                // border:  Border.all(color: Colors.grey),
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Adidas',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              )
                                              )))
                                        ] )

                                )
                                ,  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 20,top:0,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 69,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Tommy',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                          ,   Padding(
                                              padding:
                                              const EdgeInsets.only(left: 18,right: 10),
                                              child:
                                              Container(
                                                  width: 87,
                                                  height: 36,
                                                  decoration: BoxDecoration(
                                                    //  border: Border.all(color: Colors.black87, width: 4),
                                                    // border:  Border.all(color: Colors.grey),
                                                    borderRadius: BorderRadius.circular(12),
                                                    color:Color(0xFFE5E7E4),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  InkWell(
                                                      onTap: ()
                                                      {

                                                      },child:
                                                  Center(child:
                                                  Text('Polo',
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w700,
                                                        fontSize: 14 ,
                                                        color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )
                                                  )))

                                          )
                                          , Container(
                                              width: 112,
                                              height: 36,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                color:Color(0xFFE5E7E4),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              InkWell(
                                                  onTap: ()
                                                  {

                                                  },child:
                                              Center(child:
                                              Text('Raulph Lauren',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 14 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              ))))

                                        ] )

                                )

                              ])


                      )
                  ),
                  //''''''''''''priceP
                  Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Colors.black,
                  ),
                  Padding(
                      padding:
                      const EdgeInsets.only(left: 25,right: 20,top:0,bottom: 10),
                      child:

                      Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            // SizedBox(width: 10,),
                            Text("Price"
                                ,style: const TextStyle(fontSize: 16,color: Color(0xFF30322F),fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,  fontWeight: FontWeight.w700, )),

                            Padding(
                                padding:
                                const EdgeInsets.only(right: 20),
                                child:
                                GestureDetector(
                                    onTap: () {_togglePrice() ;},
                                    child:
                                    Container(
                                        width:  30,
                                        height: 26,
                                        child:
                                        Image.asset(
                                          Assets.upArrow,
                                          height: 14,
                                          width: 20,
                                        )

                                    )
                                ))
                          ])),
                  Padding(
                      padding:
                      const EdgeInsets.only(left:30,right:20 ,top:0,bottom: 10),
                      child:


                      Visibility(
                          visible: _pricevisible,
                          child:
                          Column(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 20,top:5,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              width: 112,
                                              height: 48,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(12),
                                                border:  Border.all(color: Colors.grey),
                                                color:Color(0xFFF2F2F2),
                                                shape: BoxShape.rectangle,
                                              ),
                                              child:
                                              Center(child:
                                              Text('0',
                                                style: const TextStyle(
                                                    fontFamily: 'DM Sans',
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 15 ,
                                                    color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                  //  fontWeight: FontWeight.bold,
                                                ),
                                              )))

                                          ,   Padding(
                                              padding:
                                              const EdgeInsets.only(left: 75,right: 5),
                                              child:
                                              Container(
                                                  width: 112,
                                                  height: 48,
                                                  decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.circular(12),
                                                   border:  Border.all(color: Colors.grey),
                                                    color:Color(0xFFF2F2F2),
                                                    shape: BoxShape.rectangle,
                                                  ),
                                                  child:
                                                  Center(child:
                                                  Text('200',
                                                    style: const TextStyle(
                                                        fontFamily: 'DM Sans',
                                                        fontWeight: FontWeight.w400,
                                                        fontSize: 15 ,
                                                        color:Color(0xFF30322F)//Colors.red  ,#30322F
                                                      //  fontWeight: FontWeight.bold,
                                                    ),
                                                  )))
                                          )

                                          ,
                                        ] )

                                )
                                ,  Padding(
                                    padding:
                                    const EdgeInsets.only(left: 0,right: 20,top:20,bottom: 10),
                                    child:
                                    Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        Container(
                                          width: 296,
                                        height: 20,
                                        alignment: Alignment.topCenter,
                                        // margin: EdgeInsets.all(20),
                                        child: LinearProgressIndicator(
                                          value: 0.7,
                                          backgroundColor: Colors.grey,
                                          color:Color(0xFF4F4F4F) ,
                                          minHeight: 10,
                                        )
                                        )])

                                )

                              ])


                      )
                  ),
                ]),
          )
            )
                  //''''''''''

                  // Container(
                  //
                  //   height:MediaQuery.of(context).size.height*.75,
                  //
                  //   child:
                  //   Padding(
                  //
                  //       padding:
                  //       const EdgeInsets.fromLTRB(15,10,15, 0),
                  //       child:null
                  //
                  //       // Text("Suggestion"
                  //       // ,style: const TextStyle(fontSize: 16,fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,color: Colors.grey)),
                  //       //
                  //
                  //
                  //   ),
                  //
                  // ),



    //     new ListView(
    // children: <Widget>[
    //
    // new Container(
    // margin: new EdgeInsets.only(left: 16.0, right: 16.0),
    // child: new Column(
    // children: <Widget>[
    // visibilityObs ? new Row(
    // crossAxisAlignment: CrossAxisAlignment.end,
    // children: <Widget>[
    // new Expanded(
    // flex: 11,
    // child: new TextField(
    // maxLines: 1,
    // style: Theme.of(context).textTheme.bodyText1,
    // decoration: new InputDecoration(
    // labelText: "Observation",
    // isDense: true
    // ),
    // ),
    // ),
    // new Expanded(
    // flex: 1,
    // child: new IconButton(
    // color: Colors.grey[400],
    // icon: const Icon(Icons.cancel, size: 22.0,),
    // onPressed: () {
    // _changed(false, "obs");
    // },
    // ),
    // ),
    // ],
    // ) : new Container(),
    //
    // visibilityTag ? new Row(
    // crossAxisAlignment: CrossAxisAlignment.end,
    // children: <Widget>[
    // new Expanded(
    // flex: 11,
    // child: new TextField(
    // maxLines: 1,
    // style: Theme.of(context).textTheme.bodyText1,
    // decoration: new InputDecoration(
    // labelText: "Tags",
    // isDense: true
    // ),
    // ),
    // ),
    // new Expanded(
    // flex: 1,
    // child: new IconButton(
    // color: Colors.grey[400],
    // icon: const Icon(Icons.cancel, size: 22.0,),
    // onPressed: () {
    // _changed(false, "tag");
    // },
    // ),
    // ),
    // ],
    // ) : new Container(),
    // ],
    // )
    // ),
    // new Row(
    // mainAxisAlignment: MainAxisAlignment.center,
    // children: <Widget>[
    // new InkWell(
    // onTap: () {
    // visibilityObs ? null : _changed(true, "obs");
    // },
    // child: new Container(
    // margin: new EdgeInsets.only(top: 16.0),
    // child: new Column(
    // children: <Widget>[
    // new Icon(Icons.comment, color: visibilityObs ? Colors.grey[400] : Colors.grey[600]),
    // new Container(
    // margin: const EdgeInsets.only(top: 8.0),
    // child: new Text(
    // "Observation",
    // style: new TextStyle(
    // fontSize: 12.0,
    // fontWeight: FontWeight.w400,
    // color: visibilityObs ? Colors.grey[400] : Colors.grey[600],
    // ),
    // ),
    // ),
    // ],
    // ),
    // )
    // ),
    // new SizedBox(width: 24.0),
    // new InkWell(
    // onTap: () {
    // visibilityTag ? null : _changed(true, "tag");
    // },
    // child: new Container(
    // margin: new EdgeInsets.only(top: 16.0),
    // child: new Column(
    // children: <Widget>[
    // new Icon(Icons.local_offer, color: visibilityTag ? Colors.grey[400] : Colors.grey[600]),
    // new Container(
    // margin: const EdgeInsets.only(top: 8.0),
    // child: new Text(
    // "Tags",
    // style: new TextStyle(
    // fontSize: 12.0,
    // fontWeight: FontWeight.w400,
    // color: visibilityTag ? Colors.grey[400] : Colors.grey[600],
    // ),
    // ),
    // ),
    // ],
    // ),
    // )
    // ),
    // ],
    // )
    // ],
    // )

    // , Visibility(
    // visible: true,
    // child: Row(
    // crossAxisAlignment: CrossAxisAlignment.center,
    // children: <Widget>[
    // SizedBox(
    // width: 50,
    // ),
    // Text("Search111",
    // style: TextStyle(fontSize: 20
    // ),),
    // ],
    // ),
    // ),

    // Column(
    // mainAxisAlignment: MainAxisAlignment.center,
    // children: <Widget>[
    // Text('This is text one'),
    // if (_visible) Text('can be hidden or shown'), // no dummy container/ternary needed
    // Text('This is another text'),
    // RaisedButton(child: Text('show/hide'), onPressed: (){
    // setState(() {
    // _visible = !_visible;
    // });
    // },)
    //
    // ],
    // )





            // ,Visibility(
            //   visible: visibilityObs,
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       SizedBox(
            //         width: 10,
            //       ),
            //       Text("Search",
            //         style: TextStyle(fontSize: 20
            //         ),),
            //     ],
            //   ),
            // ),

          ]));
  }


}