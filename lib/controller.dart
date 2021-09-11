import 'package:flutter_bloc/flutter_bloc.dart';

class Controller extends Cubit<States> {
  Controller() : super(InitialState());

  int counter = 0;

  void plus(){
    if(counter != 10) {
      counter++;
    }
    emit(InitialState());
  }

}

abstract class States {}

class InitialState extends States {}