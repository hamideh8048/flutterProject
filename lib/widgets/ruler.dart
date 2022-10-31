import 'package:RoboDrop/constants/Assets.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_gauges/gauges.dart';

class Ruler extends StatefulWidget {
  @override
  State<Ruler> createState() => _RulerState();
}
class _RulerState extends State<Ruler> {
  int currentIndex = 5;

// ScaleValue? _scaleValue;
// ScaleValue? _scaleValueCms;
  double shapePointerValue = 85;
  double barPointerValue = 85;
  double widgetPointerValue = 26;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: Center(
              child: Column(
                  children: [
                    SfLinearGauge(

                      barPointers: [LinearBarPointer(value: shapePointerValue)],

                      markerPointers: [
                        LinearShapePointer(
                            value: shapePointerValue,
                            onChanged: (value) {
                              setState(() {
                                shapePointerValue = value;
                              });
                            },
                            color: Colors.blue[800]
                        ),
                      ],
                    ),
          Container(
              child: SfLinearGauge(
                isAxisInversed: true,
                  axisTrackStyle: LinearAxisTrackStyle(
                      gradient: LinearGradient(

                          colors: [Colors.purple, Colors.blue],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          stops: [0.1, 0.5],
                          tileMode: TileMode.clamp
                      )
                  ))),
            Container(
                child: SfLinearGauge(
                    minimum: 150,
                    maximum: 180.0,
                    isMirrored: true,
                    orientation: LinearGaugeOrientation.vertical,
                    markerPointers: [

                  LinearShapePointer(value: 165, height: 25, width: 25,

                      offset: 20,
                      shapeType: LinearShapePointerType.triangle,
                      position: LinearElementPosition.cross)
                ])),
                    Container(
                        child: SfLinearGauge(
                            minimum: 40,
                            maximum: 80.0,
                            isMirrored: true,
                            //orientation: LinearGaugeOrientation.vertical,
                            markerPointers: [

                              LinearShapePointer(value: 55, height: 25, width: 25,

                                  offset: 20,
                                  shapeType: LinearShapePointerType.triangle,
                                  position: LinearElementPosition.cross)
                            ]))
                  ],
                  mainAxisAlignment: MainAxisAlignment.center
              )),
        )
    );
  }
}














