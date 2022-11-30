part of 'recieved_data_bloc.dart';

abstract class RecievedDataState extends Equatable {
  const RecievedDataState();
  
  @override
  List<Object> get props => [];
}

class RecievedDataInitial extends RecievedDataState {
   @override
  List<Object> get props => [];
}
class RecievedDataLoading extends RecievedDataState {
   @override
  List<Object> get props => [];
}
class RecievedDataError extends RecievedDataState{
   final String error;

  RecievedDataError(this.error);

  


   @override
  List<Object> get props => [error];
}