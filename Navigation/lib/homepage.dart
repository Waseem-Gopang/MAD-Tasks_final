import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
      ),
      body: Column(children: [
        const Text("Hello Home!"),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed("/details", arguments: "data from home");
            },
            child: const Text("Click"))
      ]),
    );
  }
}
