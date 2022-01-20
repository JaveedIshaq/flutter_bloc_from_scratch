import 'dart:async';

import 'package:flutter/material.dart';

class Cubit<T> {
  Cubit(this.state);
  T state;

  StreamController<T> stateController = StreamController();

  void emit(T newState) {
    onChange(state, newState);
    state = newState;
    stateController.add(newState);
  }

  void onChange(T currentState, T nextState) {
    if (currentState == nextState) return;
  }

  Stream<T> stateStream() {
    return stateController.stream;
  }
}

// ========= Custom Bloc Builder ========
// ======================================

class CustomBlocBuilder<T> extends StatelessWidget {
  const CustomBlocBuilder({
    Key? key,
    required this.bloc,
    required this.builder,
  }) : super(key: key);

  final Cubit<T> bloc;
  final Widget Function(BuildContext, T) builder;

  @override
  Widget build(BuildContext context) {
    final _stream = bloc.stateStream();

    return StreamBuilder<T>(
      initialData: bloc.state,
      builder: (context, asyncSnapshot) => asyncSnapshot.data != null
          ? builder.call(context, asyncSnapshot.data!)
          : const SizedBox.shrink(),
      stream: _stream,
    );
  }
}
