part of 'data_bloc.dart';

abstract class DataState extends Equatable {
  const DataState();
  
  @override
  List<Object> get props => [];
}

class DataInitial extends DataState {
   @override
  List<Object> get props => [];
}
class DataSending extends DataState{
   @override
  List<Object> get props => [];
}
class DataSend extends DataState{
   @override
  List<Object> get props => [];
}

class DataError extends DataState{
   final String error;

  DataError(this.error);


   @override
  List<Object> get props => [error];
}
