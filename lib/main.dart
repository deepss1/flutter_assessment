import 'package:flutter/material.dart';
import 'package:solution/counter_list.dart';

void main() {
  runApp(const TheApp());
}

/// The main application widget.
class TheApp extends StatelessWidget {
  /// The main application widget.
  const TheApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Assignment',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const CounterList(),
    );
  }
}
