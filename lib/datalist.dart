import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_4/recieved/recieved_data_bloc.dart';
import 'package:flutter_application_4/reveivedrepo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DataList extends StatelessWidget {
  const DataList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecievedDataBloc(receivedRepo: RepositoryProvider.of<ReceivedRepo>(context),),
      child: BlocBuilder<RecievedDataBloc, RecievedDataState>(
        builder: (context, state) {
           if(state is RecievedDataLoading){
            return const Center(
              child: CircularProgressIndicator(),
            );
        
          } else if (state is RecievedDataError){
            return const Center(child: Text('error'),);
          }
          return Scaffold(
              body: Center(
                child: Text('data'),
              ),
            );
        },
      ),
    );
  }
}
