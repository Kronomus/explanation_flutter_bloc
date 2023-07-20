part of 'internet_bloc.dart';

@immutable
abstract class InternetEvent {}
//son las acciones o eventos que se pueden realizar en el bloc
//por ejemplo, cuando se conecta a internet o cuando se desconecta
class InternetConnectedEvent extends InternetEvent {}

class InternetDisconnectedEvent extends InternetEvent {}
