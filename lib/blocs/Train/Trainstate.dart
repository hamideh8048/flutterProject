// ignore_for_file: public_member_api_docs, sort_constructors_first

abstract class TrainState {

}

class TrainUpdateState extends TrainState {

  final String id;
  TrainUpdateState(this.id);

  @override
  List<Object> get props => [id];
}
class TrainAddState extends TrainState {
  final String id;
  TrainAddState(this.id);
  @override
  List<Object> get props => [id];
}
class TrainCancleState extends TrainState {
  final String id;
  TrainCancleState(this.id);
  @override
  List<Object> get props => [];
}
