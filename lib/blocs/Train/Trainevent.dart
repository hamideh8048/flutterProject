import 'package:equatable/equatable.dart';

abstract class TrainEvent extends Equatable {
  const TrainEvent();

  @override
  List<Object> get props => [];
}

class AddTrain extends TrainEvent {

  final String id;
  AddTrain(this.id);

  @override
  List<Object> get props => [id];

}
class UpdateTrain extends TrainEvent {

  final String id;
  UpdateTrain(this.id);

  @override
  List<Object> get props => [id];

}
class CancleTrain extends TrainEvent {
  final int productIndex;

  const CancleTrain(this.productIndex);

  @override
  List<Object> get props => [];

}
