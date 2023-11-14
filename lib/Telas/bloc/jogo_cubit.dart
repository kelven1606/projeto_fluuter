import 'package:flutter_bloc/flutter_bloc.dart';

class JogoCubit extends Cubit<int> {
  JogoCubit() : super(1);

  void increment() { 
    if(state <= 10){
      emit(state + 1); 
    }    
  }
  
  void decrement() => emit(state - 1);

  int getIndex() => state;
}