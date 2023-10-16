import 'package:flutter/material.dart';
import 'package:gestures/Longpress.dart';
import 'package:gestures/doubletap.dart';
import 'package:gestures/drag.dart';
import 'package:gestures/scale.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.blue),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Offset offset = const Offset(0, 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
        child: Text("Gesture Working App"),
      )),
      body: Column(children: [
        const SizedBox(
          height: 10,
        ),
        Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DoubleTap()));
                },
                child: const Text("OnDoubleTap Gesture"))),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LongPress()));
            },
            child: const Text("OnLongPress Gesture")),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Scale()));
            },
            child: const Text("Scale Gesture")),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Drag()));
            },
            child: const Text("Drag Gesture"))
      ]),
    );
  }
}
