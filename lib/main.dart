import 'package:flutter/material.dart';
import 'package:flutter_bloc_from_scratch/counter/view/counter_view.dart';

/// Run app
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const CounterView(),
    );
  }
}
