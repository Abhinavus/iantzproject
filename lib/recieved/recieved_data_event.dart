part of 'recieved_data_bloc.dart';

abstract class RecievedDataEvent extends Equatable {
  const RecievedDataEvent();
}
class RecievindEvent extends RecievedDataEvent{
  @override
  List<Object> get props => [];
}
