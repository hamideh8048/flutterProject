
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SearchBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SearchBarWidget();
  String text;
  double width=326 ;
  Function(String)? onTap;
  final Function(String) addressChanged;

  SearchBarWidget({Key? key, required this.text,this.onTap,required this.addressChanged,required this.width}) : super(key: key);
}

class _SearchBarWidget extends State<SearchBarWidget> {
  TextEditingController searchBarController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    searchBarController.text=widget.text;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Container(
        width: widget.width,// MediaQuery.of(context).size.width*0.6,
        height: 38,
        decoration: BoxDecoration(color: Color(0xFFE5E5E5), borderRadius: BorderRadius.circular(12),
       border:  Border.all(color: Colors.grey)
        ),
        child:
               Row(
                textDirection: TextDirection.ltr,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                    const EdgeInsets.fromLTRB(15, 0, 15, 0),child:
                  Icon(Icons.search, color: Colors.grey,),

                  ),
                  Flexible(
                    child: Text(
                      searchBarController.text,style:TextStyle(fontSize: 16,fontFamily: 'DM Sans',overflow: TextOverflow.ellipsis,color: Colors.grey) ,
                      textDirection: TextDirection.rtl,
                      textAlign: TextAlign.start,
                      maxLines: 1,
                    ),

                  ),

                ])

      )

        );


  }
}
