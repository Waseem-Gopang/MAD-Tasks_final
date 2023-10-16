import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details Page"),
      ),
      body: Column(children: [
        Text("Hello Details! $message"),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Click"))
      ]),
    );
  }
}
