import 'package:flutter/material.dart';
import 'package:flutter_bloc_from_scratch/counter/cubit/counter_cubit.dart';
import 'package:flutter_bloc_from_scratch/cubit_core/cubit_core.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _myCubit = CounterCubit();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Cubit'),
      ),
      body: ListView(
        children: [
          CustomBlocBuilder(
            bloc: _myCubit,
            builder: (context, state) => Text('Counter: $state'),
          ),
          ElevatedButton(
            onPressed: () => _myCubit.increment(),
            child: const Text('INCREMENT'),
          ),
        ],
      ),
    );
  }
}
