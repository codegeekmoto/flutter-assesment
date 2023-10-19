import 'package:flutter_bloc/flutter_bloc.dart';

enum CounterEvent { add, subtract }

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    if (event == CounterEvent.add) {
      yield state + 1;
    } else if (event == CounterEvent.subtract) {
      yield state - 1;
    }
  }
}
