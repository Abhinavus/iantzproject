part of 'data_bloc.dart';

abstract class DataEvent extends Equatable {
  const DataEvent();

  @override
  List<Object> get props => [];
}

class Create extends DataEvent {
  final String email;
  final String password;

  Create(this.email, this.password);
}