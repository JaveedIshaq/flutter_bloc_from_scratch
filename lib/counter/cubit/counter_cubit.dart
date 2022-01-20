import 'package:flutter_bloc_from_scratch/cubit_core/cubit_core.dart';

/// [CounterCubit] and [CustomCubitWidget]
/// are examples of how to use the custom
/// cubit and the custom bloc builder

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() => emit(state + 1);

  @override
  void onChange(int currentState, int nextState) {
    super.onChange(currentState, nextState);
    print('onChange: currentState: $currentState, nextState: $nextState');
  }
}
