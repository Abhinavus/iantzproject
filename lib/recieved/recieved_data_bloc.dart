import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_4/reveivedrepo.dart';

part 'recieved_data_event.dart';
part 'recieved_data_state.dart';

class RecievedDataBloc extends Bloc<RecievedDataEvent, RecievedDataState> {
  final ReceivedRepo receivedRepo;
  RecievedDataBloc({required this.receivedRepo, }) : super(RecievedDataInitial()) {
    on<RecievedDataEvent>((event, emit)  async {
      emit(RecievedDataLoading());
    });
  }
}
