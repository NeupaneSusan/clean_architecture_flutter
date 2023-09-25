import 'package:first_clean_atr/presentation/ui/homepage.dart';
import 'package:flutter/material.dart';
import 'package:first_clean_atr/injection.dart' as locator;

void main() {
  locator.initRegister();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
