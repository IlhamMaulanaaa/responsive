import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsif_notes/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  int counter = 0;

  CounterCubit() : super(CounterInitialState());

  static CounterCubit get(context) =>
      BlocProvider.of(context);

  void minus() {
    counter--;
    emit(CounterMinusState(counter: counter));
  }

  void plus() {
    counter++;
    emit(CounterPlusState(counter: counter));
  }
}