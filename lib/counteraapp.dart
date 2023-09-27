import 'package:flutter_bloc/flutter_bloc.dart';

class CounterApp extends Cubit<int>{
  CounterApp():super(0);
  increment(){

final counter=state+1;
emit(counter);
  }
  decrement(){
    final counter1=state-1;
    emit(counter1);
  }
}