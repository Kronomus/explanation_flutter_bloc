import 'package:explanation_flutter_bloc/app/presentation/bloc/internet_bloc/internet_bloc.dart';
import 'package:explanation_flutter_bloc/app/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    //MultiBlocProvider nos permite tener varios blocs
    // en un solo widget
    return MultiBlocProvider(
      providers: [
        //Aqui se agrega el bloc que se va a usar en toda la app
        BlocProvider<InternetBloc>(
          create: (context) => InternetBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(
          useMaterial3: true,
        ),

        title: 'Explanation Flutter Bloc',
        home: const HomeView(),
      ),
    );
  }
}
