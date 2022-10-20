
import 'package:flutter/material.dart';
class PopUpMenuTile extends StatelessWidget {
  const PopUpMenuTile(
      {Key? key,
        required this.icon,
        required this.title,
        this.isActive = false})
      : super(key: key);
  final IconData icon;
  final String title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding:
        const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child:
      Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Icon(icon,
            color: isActive
                ? Theme.of(context).accentColor
                : Theme.of(context).primaryColor),
        const SizedBox(
          width: 8,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline4?.copyWith(
              color: isActive
                  ? Theme.of(context).accentColor
                  : Theme.of(context).primaryColor),
        ),
      ],
    ));
  }
}