import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_application_4/repositories.dart';

part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  final DataRepo dataRepo;
  DataBloc({required this.dataRepo, }) : super(DataInitial()) {
    on<Create>((event, emit) async{
      emit(DataSending());
      try {
        await dataRepo.login(event.email, event.password);
        emit(DataSend());
      } catch (e) {
        emit(DataError(e.toString()));
      }

      // TODO: implement event handler
    });
  }
}
