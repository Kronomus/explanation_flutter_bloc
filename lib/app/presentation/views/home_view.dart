import 'package:explanation_flutter_bloc/app/presentation/bloc/internet_bloc/internet_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<InternetBloc,InternetState>(
          builder: (context, state) {
            //return const Text('Loading...');
            if(state is InternetConnectedState){
              return const Text('Connected');
            }
            else if(state is InternetDisconnectedState){
              return const Text('Disconnected');
            }
            else{
              return const Text('Loading...');
            }
          }
        ),
      ),
    );
  }
}
