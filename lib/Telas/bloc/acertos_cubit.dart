import 'package:flutter_bloc/flutter_bloc.dart';

class acertos_cubit extends Cubit<int> {
  acertos_cubit() : super(0);

  void increment() {
    emit(state + 1);
  }
  int getIndex() => state;
}
