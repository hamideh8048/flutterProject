import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class SearchBottomSheet extends StatefulWidget {
  final String value;
  final Function(List<double>) callback;
  const SearchBottomSheet({Key? key,this.value="",required this.callback}) : super(key: key);


  @override
  _SearchBottomSheetState createState() => _SearchBottomSheetState();
}

class _SearchBottomSheetState extends State<SearchBottomSheet> {


  @override
  Widget build(BuildContext context) {


         return Container();

  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getsearchlist();

  }
}
