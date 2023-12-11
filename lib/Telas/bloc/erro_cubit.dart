import 'package:flutter_bloc/flutter_bloc.dart';

class erro_cubit extends Cubit<int> {
  erro_cubit() : super(0);

  void increment() {
    emit(state + 1);
  }


  int getIndex() => state;
}
