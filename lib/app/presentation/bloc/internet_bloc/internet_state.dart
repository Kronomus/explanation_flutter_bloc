part of 'internet_bloc.dart';

@immutable
abstract class InternetState {}

class InternetInitial extends InternetState {}

class InternetConnectedState extends InternetState {}

class InternetDisconnectedState extends InternetState {}
