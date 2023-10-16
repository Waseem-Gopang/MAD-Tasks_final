import 'package:flutter/material.dart';
import 'package:navigation/details.dart';
import 'package:navigation/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: "/home",
        routes: {
          "/home": (context) => const MyHomePage(),
          "/details": (context) => const Details()
        });
  }
}
