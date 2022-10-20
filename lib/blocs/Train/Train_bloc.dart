import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'Trainstate.dart';
import 'Trainevent.dart';



class TrainBloc extends Bloc<TrainEvent, TrainState> {
  TrainBloc(TrainState initialState) : super(initialState);


  @override
  Stream<TrainState> mapEventToState(TrainEvent event) async* {
    if (event is AddTrain) {

      yield TrainAddState("1");
    }
    else if (event is UpdateTrain) {

      yield TrainUpdateState("2");
    }
    else if (event is CancleTrain) {

      yield TrainCancleState("2");
    }
  }
}

class TrainEvent {
}
