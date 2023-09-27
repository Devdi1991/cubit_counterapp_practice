import 'package:flutter_bloc/flutter_bloc.dart';

class CountDecrease extends Cubit<int>{
  CountDecrease():super(0);
  decrement(){
    final counter=state-1;
    emit(counter);
  }

}