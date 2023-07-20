import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:meta/meta.dart';

part 'internet_event.dart';
part 'internet_state.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  //Connectivity es una libreria que nos permite saber si el dispositivo
  // esta conectado a internet
  final Connectivity _connectivity = Connectivity();

  StreamSubscription?  connectivitySubscription;

  // InyernetInicial es el estado inicial del bloc
  InternetBloc() : super(InternetInitial()) {
    on<InternetConnectedEvent>((event, emit) {
      emit(InternetConnectedState());
    });
    on<InternetDisconnectedEvent>((event, emit) {
      emit(InternetDisconnectedState());
    });



    connectivitySubscription = _connectivity.onConnectivityChanged.listen((result){
      if(result == ConnectivityResult.wifi ){
        add(InternetConnectedEvent());
      }else{
        add(InternetDisconnectedEvent());
      }

    });

    @override
    Future<void> close() {
      connectivitySubscription?.cancel();
      return super.close();
    }

  }
}
